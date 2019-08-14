class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(restaurant.id)
    else
      render 'new'
    end
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    # tu require le model restaurant et tu permit de saisir dans les champs spécifiés
    # ca récupère les params de ce qu'on a rentré dans les champs
  end

end