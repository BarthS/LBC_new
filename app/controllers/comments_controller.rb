class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(:user_id => current_user.id))
    redirect_to post_path(@post)

    # @comment = Comment.new(comment_params)
    #
    # @comment.save
    # redirect_to @comment
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)

    # @comment = Comment.find(params[:id])
    # @comment.destroy
    #
    # redirect_to comments_path
  end

  private
    def comment_params
      params.require(:comment).permit(:user_id, :text)
    end

end
