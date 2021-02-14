class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(username: params[:_json])
        if user.valid?
            render json: user.wallet
        else
            render json: nil
        end
    end

    def show 
        user = User.find_by(username: params[:id])
        if user == nil 
            render json: nil
        else
            render json: user.wallet
        end
    end
end
