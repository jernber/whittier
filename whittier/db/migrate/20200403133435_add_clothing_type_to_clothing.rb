class AddClothingTypeToClothing < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :clothing_type, :string
  end
end
