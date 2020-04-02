class RemoveClothingTypeFromClothing < ActiveRecord::Migration[6.0]
  def change

    remove_column :clothings, :clothing_type, :string
  end
end
