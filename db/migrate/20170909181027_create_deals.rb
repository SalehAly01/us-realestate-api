class CreateDeals < ActiveRecord::Migration[5.0]
  def change
    create_table :deals do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.integer :beds
      t.integer :baths
      t.integer :sq_ft
      t.string :type
      t.datetime :sale_date
      t.integer :price
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
