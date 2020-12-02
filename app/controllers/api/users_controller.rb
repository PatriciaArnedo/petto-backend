class Api::UsersController < ApplicationController

    def index
        users = User.all.includes(:pets)
        render json: users
    end

    def showName
        user = User.find_by(:name => params[:name]) 
        render json: user
    end


end







#maybe use this in index:
#  .includes(:pets)