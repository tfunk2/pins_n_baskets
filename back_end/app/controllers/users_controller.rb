class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create
        @new_user = User.create(username: params[:username], display_name: params[:display_name])
        redirect_to 'http://localhost:3001'
    end

    def update
        found_user = User.find(params[:id])
        @updated_user = found_user.update(username: params[:username], display_name: params[:display_name])
        redirect_to 'http://localhost:3001'
    end

    def destroy
        found_user = User.find(params[:id])
        deleted_user = found_user.destroy
        redirect_to 'http://localhost:3001'
    end
end
