class ReviewsController < ApplicationController
  def create
    @booking = Booking.find(params[:booking_id])
    @review = Review.new(review_params)
    @review.user = current_user
    @review.booking = @booking
    if @review.save!
      redirect_to bicycle_path(@booking.bicycle)
    else
      render 'bicycles/show', status: :unprocessable_entity
    end
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
