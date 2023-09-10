class Api::V1::FoodsController < ApplicationController
  def index
    restaurant = Restaurant.find(params[:restaurant_id])
    foods = restaurant.foods

    render json: {
      foods: foods
    }, status: :ok
  end

  def show
    food = Food.find(params[:id])

    render json: {
      food: food
    }, status: :ok
  end
end
