class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.string :beds
      t.string :baths
      t.string :sq_ft
      t.string :property_type
      t.string :sale_date
      t.string :price
      t.string :latitude
      t.string :longitude

      t.timestamps
    end
  end
end
