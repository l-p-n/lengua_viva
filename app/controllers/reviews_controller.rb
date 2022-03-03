class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @resource = Resource.find(params[:resource_id])
    @review.resource = @resource
    @review.user = current_user
    if @review.save
      redirect_to @review.resource
    else
      render @resource.to_show_path # => e.g. videos/show or songs/show
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @resource = @review.resource
    @review.destroy
    redirect_to @review.resource
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
