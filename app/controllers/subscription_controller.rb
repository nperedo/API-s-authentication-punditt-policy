class SubscriptionController < ApplicationController
  before_action :authorize_request

  def index
    orders = policy_scope(Subscription)
    render json: subscriptions
  end

  def create
    order = Subscription.create(
      plan_name: params[:plan_name],
      cancelled: params[:cancelled],
      user_id: @current_user.id
    )
    authorize subscription
    render json: subscription
  end

  def show
    order = Subscription.find(params[:id])
    authorize subscription
    render json: subscription
  end

end
