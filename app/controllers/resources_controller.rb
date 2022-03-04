class ResourcesController < ApplicationController
  def index
    @resources = Resource.all.includes(:likes)
    @top_resources = @resources.sort_by do |resource|
      - resource.likes.size
    end.first(10)

    @resources_for_you = @resources.sample(20)

    @audio_resources = Resource.where(type: "Song").or(Resource.where(type: "Podcast"))
    @audio_resources.sort_by { |resource| resource.published_on }

    @random_resources = @resources.sample(20)
  end

  def like
    @resource = Resource.find(params[:id])
    Like.create(user: current_user, resource: @resource)
    redirect_to @comment.resource
  end

  def unlike
    @resource = Resource.find(params[:id])
  end
end
