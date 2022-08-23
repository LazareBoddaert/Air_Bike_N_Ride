class BookingsController < ApplicationController
  before_action :set_bicycle, only: %i[new create]
  before_action :set_booking, only: %i[show destroy]

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bicycle = @bicycle
    @booking.user = current_user
    authorize @booking

    if @booking.save
      redirect_to bicycle_booking_path(@bicycle, @booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    authorize @booking
    @booking.destroy

    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def set_bicycle
    @bicycle = Bicycle.find(params[:bicycle_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
