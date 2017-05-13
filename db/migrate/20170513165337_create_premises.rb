class CreatePremises < ActiveRecord::Migration[5.1]
  def change
    create_table :premises do |t|
      t.integer :borough
      t.integer :block
      t.integer :lot
      t.string :bbl
      t.string :market
      t.string :submarket
      t.string :address
      t.decimal :percent_of_total_retail
      t.string :premise_type
      t.integer :basement_sf
      t.integer :ground_floor_sf
      t.integer :mezzanine_sf
      t.integer :upper_floor_sf
      t.string :shopping_center
      t.string :step_up_or_down
      t.integer :stories_of_retail
      t.integer :street_frontage
      t.string :ceiling
      t.string :corner_store
      t.integer :total_sf
      t.string :location_grade
      t.string :quality_grade
      t.string :premise_grade
      t.string :tenant
      t.string :occupancy
      t.string :retail_type
      t.string :retail_subtype
      t.string :retailer_size
      t.string :retailer_price_point
      t.string :retailer_nationality
      t.string :additonal_retailer_info
      t.boolean :comp
      t.integer :zip_code
      t.integer :xcoordinate
      t.integer :ycoordinate

      t.timestamps
    end
  end
end
