class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.integer :phone_number
      t.string :email_address
      t.string :first_name
      t.string :last_name
      t.string :city
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end
