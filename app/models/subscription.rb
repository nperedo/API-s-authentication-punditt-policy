class Subscription < ApplicationRecord
  belongs_to :user 
  include Cancellable
  validates  :item_name, presence: true

end
