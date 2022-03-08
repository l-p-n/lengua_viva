class ResourcesController < ApplicationController
  def index
    @resources = Resource.all.includes(:likes)

    @top_resources = @resources.sort_by do |resource|
      - resource.likes.size
    end.first(10)

    @resources_for_you = @resources.sample(20)

    @audio_resources = Resource.where(type: "Song").or(Resource.where(type: "Podcast"))
    @audio_resources.sort_by { |resource| resource.published_on }

    @random_resource = @resources.sample
    @random_resources = @resources.sample(20)

    @tags = ActsAsTaggableOn::Tag.all
  end

  def like
    @resource = Resource.find(params[:id])
    Like.create(user: current_user, resource: @resource)
    redirect_to @comment.resource
  end

  def unlike
    @resource = Resource.find(params[:id])
  end

  def search_tagged
    if params[:query].present? && params[:tag].present?
      @search_results = Resource.search_by_title_author_source_and_type(params[:query])
      @results = @search_results.tagged_with(params[:tag])
    elsif params[:query].present?
      @results = Resource.search_by_title_author_source_and_type(params[:query])
    elsif params[:tag].present?
      @results = Resource.tagged_with(params[:tag])
    end
  end
end
