class Api::UsersController < ApplicationController

    def index
        users = User.all.includes(:pets)
        render json: users
    end

    def showName
    #    if !!(params[:id] =~ /[\D]/)
        #byebug
        user = User.find_by(:name => params[:name]) 
        render json: user
    #    else
    #     user = User.find(params[:id])
    #     render json: user 
    #    end
    end

    # def showName
    #     user = User.find_by(:name => params[:name]) 
    #     render json: user
    # end

    def create
        user = User.create(user_params)
        render json: user     
    end

    def deleteUser
        user = User.find_by(:name => params[:name])
        user.destroy!
        render json: {}
    end
    # def destroy
    #     animal = Animal.find(params[:id])
    #     animal.destroy!
    #     render json: {}
    # end

private

    def user_params
        params.permit(:name)
    end


end







#maybe use this in index:
#  .includes(:pets)