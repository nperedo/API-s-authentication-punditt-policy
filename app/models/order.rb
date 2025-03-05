class Order < ApplicationRecord

  belongs_to :user
  include Cancellable
  validates  :item_name, presence: true
  
  def published?
    published == true
  end
  # scope :cancelled, -> { where(cancelled: true) }
  # scope :sort_latest, -> { order(created_at: :desc) }
  # scope :active, -> { where( cancelled: false) }
end
