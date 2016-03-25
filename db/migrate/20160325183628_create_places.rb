class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :business_name
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number
      t.string :website
      t.text :about
      t.integer :user_id
      t.boolean :claimed

      t.timestamps null: false
    end
  end
end
