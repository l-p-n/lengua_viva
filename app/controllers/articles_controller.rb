class ArticlesController < ApplicationController
  def show
    @resource_show_page = true
    @comment = Comment.new
    @resource = Resource.find(params[:id])
  end
end
