class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :phone_number
      t.text :summary
      t.string :address
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :email

      t.timestamps
    end
  end
end
