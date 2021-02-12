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
        wallet.update(balance: params["wallet"]["balance"])
        render json: wallet
    end
end
