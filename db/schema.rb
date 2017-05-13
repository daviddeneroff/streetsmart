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

ActiveRecord::Schema.define(version: 20170513165337) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "premises", force: :cascade do |t|
    t.integer "borough"
    t.integer "block"
    t.integer "lot"
    t.string "bbl"
    t.string "market"
    t.string "submarket"
    t.string "address"
    t.decimal "percent_of_total_retail"
    t.string "premise_type"
    t.integer "basement_sf"
    t.integer "ground_floor_sf"
    t.integer "mezzanine_sf"
    t.integer "upper_floor_sf"
    t.string "shopping_center"
    t.string "step_up_or_down"
    t.integer "stories_of_retail"
    t.integer "street_frontage"
    t.string "ceiling"
    t.string "corner_store"
    t.integer "total_sf"
    t.string "location_grade"
    t.string "quality_grade"
    t.string "premise_grade"
    t.string "tenant"
    t.string "occupancy"
    t.string "retail_type"
    t.string "retail_subtype"
    t.string "retailer_size"
    t.string "retailer_price_point"
    t.string "retailer_nationality"
    t.string "additonal_retailer_info"
    t.boolean "comp"
    t.integer "zip_code"
    t.integer "xcoordinate"
    t.integer "ycoordinate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer "borough"
    t.integer "block"
    t.integer "lot"
    t.string "market"
    t.string "submarket"
    t.string "building_status"
    t.string "address"
    t.string "zip_code"
    t.string "bldg_class"
    t.string "property_type"
    t.string "secondary_property_type"
    t.string "zoning"
    t.integer "land_use"
    t.integer "number_of_buildings"
    t.integer "building_sf"
    t.integer "commercial_sf"
    t.integer "residential_sf"
    t.integer "office_sf"
    t.integer "retail_sf"
    t.integer "garage_sf"
    t.integer "storage_sf"
    t.integer "factory_sf"
    t.integer "other_sf"
    t.integer "number_of_floors"
    t.integer "total_units"
    t.integer "residential_units"
    t.integer "commercial_units"
    t.decimal "lot_front"
    t.decimal "lot_depth"
    t.decimal "lot_area"
    t.string "lot_type"
    t.integer "building_frontage"
    t.integer "building_depth"
    t.integer "built_far"
    t.integer "resi_far"
    t.integer "commercial_far"
    t.integer "facility_far"
    t.integer "year_built"
    t.string "ownername"
    t.string "zonedist1"
    t.string "xcoord"
    t.string "ycoord"
    t.boolean "has_retail"
    t.integer "number_of_retail_premises"
    t.integer "retail_total_space"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
