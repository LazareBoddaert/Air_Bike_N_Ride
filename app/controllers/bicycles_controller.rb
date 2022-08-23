class BicyclesController < ApplicationController

  def index
    @bicycles = Bicycle.all
  end

  def show
    @bicycle = Bicycle.find(params[:id])
  end

  def new
    @bicycle = Bicycle.new
  end

  def create
    @bicycle = Bicycle.new(bicycle_params)
    if @bicycle.save
      redirect_to bicycle_path(@bicycle)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @bicycle = Bicycle.find(params[:id])
  end

  def update
    @bicycle = Bicycle.find(params[:id])
    @bicycle.update(bicycle_params)
    redirect_to bicycle_path(@bicycle)
  end

  def destroy
    @bicycle = Bicycle.find(params[:id])
    @bicycle.destroy
    redirect_to bicycles_path, notice: "Rental deleted", status: :see_other
  end

  private

  def bicycle_params
    params.require(:bicycle).permit(:title, :category, :description, :price_per_day, :size, :photo)
  end

  def set_bicycle
    @bicycle = Bicycle.find(params[:id])
  end
end
