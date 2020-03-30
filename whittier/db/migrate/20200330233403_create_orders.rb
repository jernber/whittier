class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.datetime :date
      t.references :user, null: false, foreign_key: true
      t.boolean :paid
      t.double :total_price

      t.timestamps
    end
  end
end
