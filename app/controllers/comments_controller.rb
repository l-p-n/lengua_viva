class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @resource = Resource.find(params[:resource_id])
    @comment.resource = @resource
    @comment.user = current_user
    if @comment.save
      redirect_to @comment.resource
    else
      render @resource.to_show_path
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @resource = @comment.resource
    @comment.destroy
    redirect_to @resource
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
