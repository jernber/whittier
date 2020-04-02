# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
clothing_table = CSV.parse(File.read('clothing_cleaned.csv'), headers: true)

clothing_table.each do |row|
  row = row.to_a

  name = row[0][1]
  price = row[1][1]
  pic = row[2][1]
  type = row[3][1]

  Clothing.create
  # price = row[:PRICE]
  # pic = row[:PICTURE_SRC]
  # type = row[:TYPE]
  # puts "name: #{name} price: #{price} pic: #{pic} type: #{type}"
end
if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end
