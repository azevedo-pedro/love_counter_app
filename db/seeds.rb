# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.find_or_create_by!(email: 'azevedodev@outlook.com') do |user|
  user.password = '123456'
  user.name = 'Azevedo'
  user.password_confirmation = '123456'
end

Relationship.find_or_create_by!(start_date: '2025-05-16') do |relationship|
  relationship.user_id = 1
end
