# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170620024128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "premises", force: :cascade do |t|
    t.string "building_address"
    t.string "tenant_name"
    t.string "occupancy_status"
    t.string "availability_status"
    t.string "retail_type"
    t.string "retail_sub_type"
    t.string "retailer_footprint"
    t.integer "retail_price_point"
    t.string "retailer_heritage"
    t.string "retailer_value"
    t.string "retailer_occurence"
    t.string "location_quality"
    t.string "premise_quality"
    t.string "quality_ranking"
    t.string "class_mix"
    t.string "corner_store"
    t.integer "percent_of_bldg_retail"
    t.string "premise_type"
    t.integer "basement_sf"
    t.integer "ground_fl_sf"
    t.integer "mezzazine"
    t.integer "upper_fl_sf"
    t.string "step_up_or_down"
    t.integer "number_of_retail_stories"
    t.integer "street_frontage"
    t.integer "approx_retail_sf"
    t.integer "street_frontage_ratio"
    t.string "ceiling"
    t.string "contains_retail"
    t.string "submarket"
    t.integer "total_number_of_retail_space"
    t.integer "total_retail_space"
    t.string "zip_code"
    t.string "xcord"
    t.string "ycord"
    t.string "building_status"
    t.integer "borocode"
    t.string "borough"
    t.string "bbl"
    t.integer "block"
    t.integer "lot"
    t.string "frequency_of_demand"
    t.string "location_appearance"
    t.string "walkability_score"
    t.string "viability_score"
    t.string "demographic"
    t.string "zip_code_from"
    t.string "zip_code_to"
    t.string "submarket_health_index"
    t.string "gentrifcation_score"
    t.string "footfall_index"
    t.string "block_appeal"
    t.string "target_shopper_profile"
    t.string "stability_index"
    t.string "growth_index"
    t.string "retailer_viability"
    t.string "venting"
    t.string "social_media"
    t.integer "total_bldg_front"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "notes"
  end

end
