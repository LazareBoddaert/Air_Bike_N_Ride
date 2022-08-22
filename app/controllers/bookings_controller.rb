class BookingsController < ApplicationController
  before_action :set_bicycle, only: %i[new create]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bicycle = @bicycle
    if @booking.save
      redirect_to new_bicycle_booking(@bicycle)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end
end
