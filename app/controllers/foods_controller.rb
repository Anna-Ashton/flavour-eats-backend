class FoodsController < ApplicationController

    wrap_parameters formart:[]
    def index 
        food = Food.all 
        render json: food 
    end 

    def create 
        food = Food.create!(food_params)
        render json: food, status: :created
    end

    def show 
       food = find_food
       render json: food 
    end


    private

    def find_food 
        Food.find(params[:id])
    end

    def food_params 
        params.permit(:name, :description, :food_url, :price, :review)
    end
end
