class CartsController < ApplicationController


    def create 
        @current_user = User.find(session[:user_id])
        cart = @current_user.carts.create!(cart_params)
        render json: cart, status: :created
    end


    def destroy 
        cart = find_cart
        cart.destroy
        render json: cart, status: :no_content
    end 
    
    private

    def find_cart 
        Cart.find(params[:id])
    end


    def cart_params 
        params.permit(:user_id, :food_id)
    end
end
