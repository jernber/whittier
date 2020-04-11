# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :user
  has_many :clothing_orders
  before_save :set_subtotal

  def subtotal
    clothing_orders.collect { |clothing_order| clothing_order.valid? ? clothing_order.unit_price * clothing_order.quantity : 0 }.sum
  end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end
end
