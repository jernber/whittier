class AddNameToClothing < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :name, :string
  end
end
