class CreateClothingOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :clothing_orders do |t|
      t.reference :clothing
      t.reference :order
      t.double :price
      t.string :effects
      t.string :size

      t.timestamps
    end
  end
end
