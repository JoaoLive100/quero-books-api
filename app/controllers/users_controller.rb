class UsersController < ApplicationController
    def create
        user = User.new(user_params)
    
        if user.save
            session[:user_id] = user.id
            render json: { user_id:session[:user_id], session: session.inspect, status: :created }
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    
    private

    def user_params
      params.require(:user).permit(:email, :name, :password)
    end
    
end
