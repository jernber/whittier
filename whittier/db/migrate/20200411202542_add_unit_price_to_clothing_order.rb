class AddUnitPriceToClothingOrder < ActiveRecord::Migration[6.0]
  def change
    add_column :clothing_orders, :unit_price, :decimal
    add_column :clothing_orders, :total, :decimal
    add_column :clothing_orders, :quantity, :decimal
  end
end
