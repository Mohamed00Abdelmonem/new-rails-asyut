# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.destroy_all
Editor.destroy_all

users = User.create!([
  {
    name: "Mohamed",
    email: "mohamed@gmail.com",
    dob: Date.new(2002, 10, 8),
    address: "Talkha",
    phone_number: "01000000001"
  },
  {
    name: "Ahmed",
    email: "ahmed@gmail.com",
    dob: Date.new(2001, 5, 15),
    address: "Mansoura",
    phone_number: "01000000002"
  },
  {
    name: "Ali",
    email: "ali@gmail.com",
    dob: Date.new(2000, 8, 20),
    address: "Cairo",
    phone_number: "01000000003"
  }
])

editors = Editor.create!([
  {
    name: "Editor One",
    email: "editor1@gmail.com"
  },
  {
    name: "Editor Two",
    email: "editor2@gmail.com"
  },
  {
    name: "Editor Three",
    email: "editor3@gmail.com"
  }
])

puts "Seed data created successfully!"