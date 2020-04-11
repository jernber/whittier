# frozen_string_literal: true

class ClothingOrdersController < ApplicationController
  def create
    @order = current_order
    @order_item = @order.clothing_orders.new
    @order.save
    session[:order_id] = @order.id
  end

  private

  def order_params
    params.require(:order_item).permit(:product_id, :quantity)
  end
end
