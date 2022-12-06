class UserFoodsController < ApplicationController

    def index 
        # render json: UserFood.all 
        render json: User.find(session[:user_id]).foods
    end

    # def show 
    # end

    def create
        @current_user = User.find(session[:user_id])
        # p @current_user
        user_food = @current_user.user_foods.create!(user_food_params)
        render json: user_food, status: :created
    end

    private 

    def user_food_params 
        params.permit(:user_id, :food_id)
    end
end
