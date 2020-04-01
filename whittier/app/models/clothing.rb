# frozen_string_literal: true

class Clothing < ApplicationRecord
  has_many :clothing_orders
end
