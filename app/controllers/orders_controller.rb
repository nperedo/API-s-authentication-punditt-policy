class OrdersController < ApplicationController
  before_action :authorize_request

  def index
    orders = policy_scope(Order)
    render json: orders
  end

  def create
    order = Order.create(
      item_name: params[:item_name],
      cancelled: params[:cancelled],
      published: true,
      user_id: @current_user.id
    )
    authorize order
    render json: order
  end

  def show
    order = Order.find(params[:id])
    authorize order
    render json: order
  end

end
