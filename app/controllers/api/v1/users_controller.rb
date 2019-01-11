class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(uid: params[:id])
        render json: @user
    end

    private

    def user_params
        params.require(:user).permit(:name, :id)
    end
end
