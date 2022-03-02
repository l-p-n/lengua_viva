class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
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
