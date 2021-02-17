class OrdersController < ApplicationController

  def create
    order = Order.create(ticker: params["ticker"], quantity: params["quantity"], total: params["total"].to_f, orderType: params["type"], wallet_id: params["wallet_id"])
    render json: order
  end

  def index
    orders = Order.all
    render json: orders
  end

end
