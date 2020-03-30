class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :product_id
      t.integer :username
      t.datetime :date
      t.boolean :paid
      t.integer :total_price

      t.timestamps
    end
  end
end
