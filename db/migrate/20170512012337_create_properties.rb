class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.integer :borough
      t.integer :block
      t.integer :lot
      t.string :market
      t.string :submarket
      t.string :building_status
      t.string :address
      t.string :zip_code
      t.string :bldg_class
      t.string :property_type
      t.string :secondary_property_type
      t.string :zoning
      t.integer :land_use
      t.integer :number_of_buildings
      t.integer :building_sf
      t.integer :commercial_sf
      t.integer :residential_sf
      t.integer :office_sf
      t.integer :retail_sf
      t.integer :garage_sf
      t.integer :storage_sf
      t.integer :factory_sf
      t.integer :other_sf
      t.integer :number_of_floors
      t.integer :total_units
      t.integer :residential_units
      t.integer :commercial_units
      t.decimal :lot_front
      t.decimal :lot_depth
      t.decimal :lot_area
      t.string :lot_type
      t.integer :building_frontage
      t.integer :building_depth
      t.integer :built_far
      t.integer :resi_far
      t.integer :commercial_far
      t.integer :facility_far
      t.integer :year_built
      t.string :ownername
      t.string :zonedist1
      t.string :xcoord
      t.string :ycoord
      t.boolean :has_retail
      t.integer :number_of_retail_premises
      t.integer :retail_total_space

      t.timestamps
    end
  end
end
