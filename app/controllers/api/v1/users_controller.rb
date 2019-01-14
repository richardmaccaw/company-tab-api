class Api::V1::UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find_by(uid: params[:id])
        render json: @user
    end

    def create
        @company = Company.find_or_create_by(domain: user_params[:domain])
        @user = User.new(uid: user_params[:id], company_id: @company.id)
        if @user.save
            render json: @user
        else
            render json: {error: 'User could not be saved.'}
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :domain, :id)
    end
end
