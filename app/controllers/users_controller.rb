class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(username: params["username"], password: params["password"])
        if user.valid?
            wallet = Wallet.create(cash: 250000, balance: 250000, btc: 0, eth: 0, doge: 0, xrp: 0, ltc: 0, link: 0, xmr: 0, dot: 0, uni: 0, user_id: user.id)
            render json: wallet
        else
            render json: nil
        end
    end

    def show 
        data = params[:id].split("-")
        username = data[0]
        password = data[1]
        user = User.find_by(username: username)
        if user == nil 
            render json: nil  
        else
          if password != user.password
            render json: nil 
          else
            render json: user.wallet
          end
        end
    end
end
