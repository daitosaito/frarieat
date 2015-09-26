class DishesController < ApplicationController
  def new
    @dish = Dish.new
  end

  def create
    Dish.create(dish_params)
    redirect_to action: :new
  end

  private

  def dish_params
    params.require(:dish).permit(:name, :user_id)
  end

end
