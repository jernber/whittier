class CreateClothingOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :clothing_orders do |t|
      t.references :clothing, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true
      t.float :price
      t.string :effect
      t.string :size

      t.timestamps
    end
  end
end
