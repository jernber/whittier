class RemoveTypeColumnFromClothing < ActiveRecord::Migration[6.0]
  def change

    remove_column :clothings, :type, :string
  end
end
