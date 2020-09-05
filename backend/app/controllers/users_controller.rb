class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end

    def show
        user = User.find_by(username: params[:username])
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user
    end

    def update
        user = User.update(user_params)
        render json: user
    end

    def destroy
        user = User.find_by(username: params[:username])
        user.destroy
    end



    private

    def user_params 
        params.require(:user).permit(:username)
    end

end
