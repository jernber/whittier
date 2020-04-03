# frozen_string_literal: true

class Clothing < ApplicationRecord
  has_many :clothing_orders

  validates :name, :price, presence: true

  has_one_attached :image
end
