class AddPublishedToOrders < ActiveRecord::Migration[8.0]
  def change
    add_column :orders, :published, :boolean
  end
end
