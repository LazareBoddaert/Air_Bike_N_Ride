class BicyclesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_bicycle, only: %i[show edit update destroy]

  def index
    @bicycles = policy_scope(Bicycle)
    if params[:query].present?
      @bicycles = Bicycle.search_by_category_and_size(params[:query])
    end
  end

  def show
    @review = Review.new
    @bookings = Booking.where(user_id: current_user, bicycle_id: @bicycle)
    @reviews = Review.all
    authorize @bicycle
    @booking = Booking.new
  end

  def new
    @bicycle = Bicycle.new
    authorize @bicycle
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    @bicycle.user_id = current_user.id
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render :new, status: :unprocessable_entity
    end
    authorize @bicycle
  end

  def edit
    authorize @bicycle
  end

  def update
    @bicycle.update(bicycle_params)
    redirect_to bicycle_path(@bicycle)
    authorize @bicycle
  end

  def destroy
    @bicycle.destroy
    redirect_to bicycles_path, notice: "Rental deleted", status: :see_other
    authorize @bicycle
  end

  private

  def bicycle_params
    params.require(:bicycle).permit(:title, :category, :description, :price_per_day, :size, :photo, :address)
  end

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end
end
