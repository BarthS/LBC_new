class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
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
      params.require(:comment).permit(:text)
    end

end
