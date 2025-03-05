class AddUserIdToSubscription < ActiveRecord::Migration[8.0]
  def change
    add_column :subscriptions, :user_id, :integer
  end
end
