class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @resource = Resource.find(params[:resource_id])
    @comment.resource = @resource
    @comment.user = current_user
    if @comment.save
      case @resource.type
      when "Video"
        redirect_to video_path(@resource, anchor: "comment-header")
      when "Song"
        redirect_to song_path(@resource, anchor: "comment-header")
      when "Podcast"
        redirect_to podcast_path(@resource, anchor: "comment-header")
      when "Article"
        redirect_to article_path(@resource, anchor: "comment-header")
      end
    else
      render @resource.to_show_path
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @resource = @comment.resource
    @comment.destroy
    redirect_to @comment.resource
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
