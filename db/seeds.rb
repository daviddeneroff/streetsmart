# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'bleeker-sample.csv'))
puts csv_text
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  t = Premise.new
  t.building_address = row['building_address']
  t.tenant_name = row['tenant_name']
  t.occupancy_status = row['occupancy_status']
  t.availability_status = row['availability_status']
  t.retail_type = row['retail_type']
  t.retail_sub_type = row['retail_sub_type']
  t.retailer_footprint = row['retailer_footprint']
  t.retail_price_point = row['retail_price_point']
  t.retailer_heritage = row['retailer_heritage']
  t.retailer_value = row['retailer_value']
  t.retailer_occurence = row['retailer_occurence']
  t.location_quality = row['location_quality']
  t.premise_quality = row['premise_quality']
  t.quality_ranking = row['quality_ranking']
  t.class_mix = row['class_mix']
  t.corner_store = row['corner_store']
  t.percent_of_bldg_retail = row['percent_of_bldg_retail']
  t.premise_type = row['premise_type']
  t.basement_sf = row['basement_sf']
  t.ground_fl_sf = row['ground_fl_sf']
  t.mezzazine = row['mezzazine']
  t.upper_fl_sf = row['upper_fl_sf']
  t.step_up_or_down = row['step_up_or_down']
  t.number_of_retail_stories = row['number_of_retail_stories']
  t.street_frontage = row['street_frontage']
  t.approx_retail_sf = row['approx_retail_sf']
  t.street_frontage_ratio = row['street_frontage_ratio']
  t.ceiling = row['ceiling']
  t.contains_retail = row['contains_retail']
  t.submarket = row['submarket']
  t.total_number_of_retail_space = row['total_number_of_retail_space']
  t.total_retail_space = row['total_retail_space']
  t.zip_code = row['zip_code']
  t.xcord = row['xcord']
  t.ycord = row['ycord']
  t.building_status = row['building_status']
  t.borocode = row['borocode']
  t.borough = row['borough']
  t.bbl = row['bbl']
  t.block = row['block']
  t.lot = row['lot']
  t.frequency_of_demand = row['frequency_of_demand']
  t.location_appearance = row['location_appearance']
  t.walkability_score = row['walkability_score']
  t.viability_score = row['viability_score']
  t.demographic = row['demographic']
  t.zip_code_from = row['zip_code_from']
  t.zip_code_to = row['zip_code_to']
  t.submarket_health_index = row['submarket_health_index']
  t.gentrifcation_score = row['gentrifcation_score']
  t.footfall_index = row['footfall_index']
  t.block_appeal = row['block_appeal']
  t.target_shopper_profile = row['target_shopper_profile']
  t.stability_index = row['stability_index']
  t.growth_index = row['growth_index']
  t.retailer_viability = row['retailer_viability']
  t.venting = row['venting']
  t.social_media = row['social_media']
  t.total_bldg_front = row['total_bldg_front']
  t.active = row['active']

  t.save

end

puts "There are now #{Premise.count} rows in the transactions table"