class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(username: params[:_json])
        if user.valid?
            wallet = Wallet.create(cash: 250000, balance: 250000, btc: 0, eth: 0, doge: 0, user_id: user.id)
            render json: wallet
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
