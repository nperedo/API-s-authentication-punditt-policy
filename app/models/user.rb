class User < ApplicationRecord
  has_many :orders
  has_many :subscriptions

  validates :email, presence: true, uniqueness: true
  has_secure_password 
  
  validates :role, inclusion: { in: %w[user admin], message: "%{value} is not a valid role" }

  def admin?
    role == 'admin'
  end

  def user?
    role == 'user'
  end
end
