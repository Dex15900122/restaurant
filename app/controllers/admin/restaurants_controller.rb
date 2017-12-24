class Admin::RestaurantsController < ApplicationController


before_action :set_restaurant, only: [:show, :edit,:update,:destroy]

  def index
    @restaurants = Rest.all
    
  end

 
  def new
    @restaurant = Rest.new
    
  end
  
  def create
   @restaurant = Rest.new(restaurant_params)
   @restaurant.user_id=current_user.id
   
    
   if @restaurant.save
     flash[:notice] = "restaurant was successfully created"
    
     redirect_to admin_restaurants_path
   else
     flash.now[:alert] = "restaurant was failed to create"
     render :new
   end
 end

  def show

    set_restaurant
    
  end
  def edit
    @restaurant.user_id=current_user.id

  end

  def update
     @restaurant.user_id=current_user.id

    if @restaurant.update(restaurant_params)
      flash[:notice] = "restaurant was successfully update"
      redirect_to admin_restaurant_path
    else
      flash.now[:alert] = "restaurant was failed to update"
      render :edit
    end
  end 
   def destroy
    @restaurant.destroy
    redirect_to admin_restaurants_path
    flash[:alert] = "restaurant was deleted"
  end





 private

 def restaurant_params
   params.require(:rest).permit(:name, :seat, :phone, :description, :photo,
      :minimum_order, :dining_time, :close_time, :open_time)
   
 end
 def set_restaurant
    @restaurant = Rest.find(params[:id])
  end





end
