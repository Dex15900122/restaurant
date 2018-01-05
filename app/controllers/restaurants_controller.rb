class RestaurantsController < ApplicationController

  def index
    if params[:search]
       @restaurants = Rest.where('name LIKE ?', "%#{params[:search]}%")
    else

        @restaurants=Rest.all
    end
  end

  def show
  @restaurant = Rest.find(params[:id])
  end

end
