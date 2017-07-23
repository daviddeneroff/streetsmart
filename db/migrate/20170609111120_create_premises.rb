class CreatePremises < ActiveRecord::Migration[5.1]
  def change
    create_table :premises do |t|
      t.string :building_address
      t.string :tenant_name
      t.string :occupancy_status
      t.string :availability_status
      t.string :retail_type
      t.string :retail_sub_type
      t.string :retailer_footprint
      t.string :retail_price_point
      t.string :retailer_heritage
      t.string :retailer_value
      t.string :retailer_occurence
      t.string :location_quality
      t.string :premise_quality
      t.string :quality_ranking
      t.string :class_mix
      t.string :corner_store
      t.integer :percent_of_bldg_retail
      t.string :premise_type
      t.integer :basement_sf
      t.integer :ground_fl_sf
      t.integer :mezzazine
      t.integer :upper_fl_sf
      t.string :step_up_or_down
      t.integer :number_of_retail_stories
      t.integer :street_frontage
      t.integer :approx_retail_sf
      t.integer :street_frontage_ratio
      t.string :ceiling
      t.string :contains_retail
      t.string :submarket
      t.integer :total_number_of_retail_space
      t.integer :total_retail_space
      t.string :zip_code
      t.string :xcord
      t.string :ycord
      t.string :building_status
      t.integer :borocode
      t.string :borough
      t.string :bbl
      t.integer :block
      t.integer :lot
      t.string :frequency_of_demand
      t.string :location_appearance
      t.string :walkability_score
      t.string :viability_score
      t.string :demographic
      t.string :zip_code_from
      t.string :zip_code_to
      t.string :submarket_health_index
      t.string :gentrifcation_score
      t.string :footfall_index
      t.string :block_appeal
      t.string :target_shopper_profile
      t.string :stability_index
      t.string :growth_index
      t.string :retailer_viability
      t.string :venting
      t.string :social_media
      t.integer :total_bldg_front
      t.boolean :active

      t.timestamps
    end
  end
end
