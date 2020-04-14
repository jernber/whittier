# frozen_string_literal: true

class Clothing < ApplicationRecord
  has_many :clothing_orders
  has_many :orders, through: :clothing_orders

  validates :name, :price, :clothing_type, presence: true
  validates :price, numericality: true

  has_one_attached :image

  def self.search(search)
    if search
      where(['name LIKE ?', "%#{params[:search]}%"]) if search
    else
      all
    end
  end
end
