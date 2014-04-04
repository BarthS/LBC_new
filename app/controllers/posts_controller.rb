class PostsController < ApplicationController
  def new
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @posts = Post.all
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  def update
    @post = Post.find(params[:id])

    if @post.update(params[:post].permit(:title, :price, :text))
      redirect_to @post
    else
      render 'edit'
    end
  end

  private
    def post_params
      params.require(:post).permit(:title, :price, :text)
    end
end
