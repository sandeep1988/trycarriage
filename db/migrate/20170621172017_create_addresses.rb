class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.integer :beds
      t.integer :baths
      t.string :type
      t.datetime :sale_date
      t.string :price
      t.string :latitude
      t.string :longitude

      t.timestamps null: false
    end
  end
end
