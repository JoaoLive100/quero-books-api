# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Define the number of users you want to create
number_of_users = 10

# Create users using Faker
number_of_users.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'banana123' # You can set a default password for all users
  )
end

puts "Seed data generated successfully!"
