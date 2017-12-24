class CommentsController < ApplicationController

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)
    @comment.user = current_user
    @comment.save!
    redirect_to restaurant_blog_path(@blog.rest_id,@blog)
  end


   private

  def comment_params
    params.require(:comment).permit(:commenter)
  end
end