# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

regular_user = User.create(name: "regular-user", email: "regular@test.com", password: "password", role: "user")

admin_user = User.create(name: "admin-user", email: "admin@test.com", password: "password", role: "admin")

i = 1
5.times do 
  Order.create(item_name: "product ##{i}", published: true, user_id: 1)
  i += 1
end 

i = 6
5.times do 
  Order.create(item_name: "product ##{i}", published: false, user_id: 1)
  i += 1
end