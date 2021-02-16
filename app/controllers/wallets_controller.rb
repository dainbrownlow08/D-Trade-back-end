class WalletsController < ApplicationController
    def index
        wallets = Wallet.all
        render json: wallets
    end

    def show
        wallet = Wallet.find(params[:id])
        render json: wallet
    end

    def update
        wallet = Wallet.find(params[:id])
        newBalance = wallet.balance
        if params["wallet"]["balance"]
          newBalance = params["wallet"]["balance"]
          wallet.update(balance: newBalance)
        else
          wallet.update(params.keys[0].downcase.to_sym => params[params.keys[0]], cash: params["cash"])
        end
        render json: wallet
    end
end
