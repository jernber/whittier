class CreateClothings < ActiveRecord::Migration[6.0]
  def change
    create_table :clothings do |t|
      t.string :clothing_type
      t.string :size
      t.string :effects
      t.string :sale_type
      t.float :price

      t.timestamps
    end
  end
end
