# frozen_string_literal: true

require 'csv'
# CSV.read('data.csv', headers: true)
clothing_table = CSV.parse(File.read('clothing_cleaned.csv'), headers: true)

puts clothing_table.first
