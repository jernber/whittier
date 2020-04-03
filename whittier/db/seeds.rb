# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
CSV.foreach(Rails.root.join('lib/clothing_cleaned.csv'), headers: true) do |row|
  row = row.to_a

  name = row[0][1]
  price = row[1][1]
  pic = row[2][1]
  brand = row[3][1]
  type = row[4][1]

  type.class
  price = price[1..price.size]
  pic = pic[2..pic.size]

  random_number = rand(1..100)
  sale_type = if random_number.even?
                'Regular'
              else
                'On Sale'
              end

  download_image = 'https://' + pic
  download_image = open(URI.escape(download_image))
  clothes = Clothing.create(
    name: name,
    price: price,
    type: type,
    sale_type: sale_type,
    brand: brand
  )
  name = name.parameterize.underscore
  clothes.image.attach(io: download_image, filename: "image-#{name}.jpg")
end

if Rails.env.development?
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end
