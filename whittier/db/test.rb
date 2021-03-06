# frozen_string_literal: true

require 'csv'
# CSV.read('data.csv', headers: true)
clothing_table = CSV.parse(File.read('clothing_cleaned.csv'), headers: true)
# puts clothing_table.size

clothing_table.each do |row|
  row = row.to_a

  name = row[0][1]
  price = row[1][1]
  pic = row[2][1]
  brand = row[3][1]
  type = row[4][1]
  pic = pic[2..pic.size]
  price = price[1..price.size]
  puts name
  puts
  puts pic
  puts type.upcase!
end
