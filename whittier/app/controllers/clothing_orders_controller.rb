# frozen_string_literal: true

class ClothingOrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    @order = current_order
    @order.clothing_orders.new(order_params)
    @order.clothing_orders.user_id = current_user
    @order.save!
    session[:order_id] = @order.id
  end

  # private

  def order_params
    params.require(:clothing_order).permit(:clothing_id, :quantity, :unit_price)
  end
end
