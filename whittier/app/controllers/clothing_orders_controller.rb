# frozen_string_literal: true

class ClothingOrdersController < ApplicationController
  def create
    @order = current_order
    binding.pry
    item = Clothing.find(params['clothing_order']['product_id'])
    # @order_item = @order.clothing_orders.new(order_params)
    @order.clothing << item if item
    @order.save!
    session[:order_id] = @order.id
  end

  private

  # def order_params
  #   params.require(:order_item).permit(:product_id, :quantity)
  # end
end
