class Api::UsersController < ApplicationController

    def index
        users = User.all.includes(:pets)
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user        
    end

    def showName
        user = User.find_by(:name => params[:name]) 
        render json: user
    end

    def create
        user = User.create(user_params)
        render json: user     
    end

private

    def user_params
        params.permit(:name)
    end


end







#maybe use this in index:
#  .includes(:pets)