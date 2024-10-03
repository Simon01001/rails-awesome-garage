class FavouritesController < ApplicationController

  def index
    @favourites = Favourite.all
  end

  def new
    @favourite = Favourite.new
    @car = Car.find(params[:car_id])
  end

  def show
    @favourite = Favourite.find(params[:id])
  end

  def create
    @favourite = Favourite.new
    car = Car.find(params[:car_id])
    @favourite.car = car
    if @favourite.save
      redirect_to car_path(car)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, status: :see_other
  end
end
