class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if params[:video_id]
      @comment.resource = Video.find(params[:video_id])
    elsif params[:song_id]
      @comment.resource = Song.find(params[:song_id])
    elsif params[:article_id]
      @comment.resource = Article.find(params[:article_id])
    elsif params[:podcast_id]
      @comment.resource = Podcast.find(params[:podcast_id])
    end
    @comment.user = current_user
    @comment.save
    redirect_to @comment.resource
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
