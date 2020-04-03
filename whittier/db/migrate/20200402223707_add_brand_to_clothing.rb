class AddBrandToClothing < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :brand, :string
  end
end
