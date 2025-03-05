# require 'rails_helper'


# RSpec.describe Subscription, type: :model do
#   it 'can create a subscription with the default factory' do
#     subscription = create(:subscription)
#     expect(subscription).to be_valid
#   end

#   it 'expects an Subscription to be invalid if plan_name is nil' do
#     subscription = create(:subscription)
#     subscription.plan_name = nil 
#     expect(order).to be_invalid
#   end

#   describe "scopes" do
#     describe '.cancelled' do
#       it 'returns only cancelled subscription' do
#         cancelled_subscription = create(:subscription, cancelled: true)
#         active_subscription = create(:subscription)

#         result = Subscription.cancelled
#         expect(result).to include(cancelled_subscription)
#         expect(result).not_to include(active_subscription)
#       end 
#     end 
#   end

#   describe '.active' do 
#     it 'returns only active subscription' do 
#       active_subscription = create(:subscription)
#       cancelled_subscription = create(:subscription, cancelled: true)

#       result = Subscription.active
#       expect(result).to include(active_subscription)
#       expect(result).not_to include(cancelled_subscription)
#     end 
#   end
# end