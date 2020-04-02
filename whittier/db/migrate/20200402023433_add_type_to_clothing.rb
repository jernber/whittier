class AddTypeToClothing < ActiveRecord::Migration[6.0]
  def change
    add_column :clothings, :type, :string
  end
end
