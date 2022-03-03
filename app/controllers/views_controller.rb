class ViewsController < ApplicationController
  def create
    @view = View.new
    @resource = Resource.find(params[:resource_id])
    @view.user = current_user
    @view.resource = @resource
    @view.save
    redirect_to @view.resource
  end
end
