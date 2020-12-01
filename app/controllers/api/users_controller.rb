class Api::UsersController < ApplicationController

    def index
        users = User.all.includes(:pets)
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end
end







#maybe use this in index:
#  .includes(:pets)