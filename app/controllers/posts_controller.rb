class PostsController < ApplicationController
  def new
    @author = current_user.id
    @cats = Cat.all
  end

  def show
    @post = Post.find(params[:id])
    @author = User.find(@post.user_id)
  end

  def edit
    @post = Post.find(params[:id])
    @cats = Cat.all
  end

  def create
    # @post = Post.new(post_params)
    @post = current_user.posts.new(post_params)

    @post.save
    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  private
    def post_params
      params.require(:post).permit(:user_id, :cat_id, :title, :price, :text, :image1, :image2, :image3, :image4, :image5)
    end
end
