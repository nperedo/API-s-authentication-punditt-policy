module Cancellable
  extend ActiveSupport::Concern

  included do
    scope :cancelled, -> { where(cancelled: true) }
    scope :sort_latest, -> { order(created_at: :desc) }
    scope :active, -> { where( cancelled: false) }
  end

  def cancel!
    update(cancelled: true)
  end

  def uncancel!
    update(cancelled: false)
  end
end




#   def cancel!
#     self.cancelled = true
#     self.cancelled_at = Time.current
#     save!
#   end

#   def uncancel! 
#     self.cancelled = false
#     self.cancelled_at = nil
#     save!
#   end 
# end