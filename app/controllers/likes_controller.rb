class LikesController < ApplicationController
  before_action :find_resource, only: create

  def create
    @like = Like.new
    @like.user = current_user
    @like.resource = @resource
    @like.save
    redirect_to @resource
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to @resource
  end

  private

  def find_resource
    @resource = Resource.find(params[:resource_id])
  end
end
