class OrderPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope

    def resolve
      if user.admin?
        scope.all
      else
        scope.where(published: true)
      end 
    end
  end
  attr_reader :user, :order

  def initialize(user, order)
    @user = user
    @order = order
  end 

  def index? 
    true
  end 

  def show?
    puts "---------------------------------------------------------"
    puts order.item_name
    puts "in the order policy"
    puts "---------------------------------------------------------"
    order.published? || user.admin?
  end

  def create?
    user.present?
  end

  def update?
    user.present? && (order.user_id == user.id || user.admin?)
  end 

  def destroy?
    user.present? && (order.user_id == user.id || user.admin?)
  end 
end

