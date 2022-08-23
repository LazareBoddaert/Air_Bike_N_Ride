class ReviewsController < ApplicationController
  def create
    @bicycle = Bicycle.find(params[:bicycle_id])
    @review.bicycle = @bicycle
    @review = Review.new(review_params)
    if @review.save
      redirect_to bicycle_path(@bicycle)
    else
      render 'bicycles/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
