# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'streetsmart.csv'))
puts csv_text
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

csv.each do |row|
  t = Premise.new
  t.borough = row['borough']
  t.block = row['block']
  t.lot = row['lot']
  t.bbl = row['bbl']
  t.market = row['market']
  t.submarket = row['submarket']
  t.address = row['address']
  t.percent_of_total_retail = row['percent_of_total_retailpercent_of_total_retail']
  t.premise_type = row['premise_type']
  t.basement_sf = row['basement_sf']
  t.ground_floor_sf = row['ground_floor_sf']
  t.mezzanine_sf = row['mezzanine_sf']
  t.upper_floor_sf = row['upper_floor_sf']
  t.shopping_center = row['shopping_center']
  t.step_up_or_down = row['step_up_or_down']
  t.stories_of_retail = row['stories_of_retail']
  t.street_frontage = row['street_frontage']
  t.ceiling = row['ceiling']
  t.corner_store = row['corner_store']
  t.total_sf = row['total_sf']
  t.location_grade = row['location_grade']
  t.quality_grade = row['quality_grade']
  t.premise_grade = row['premise_grade']
  t.tenant = row['tenant']
  t.occupancy = row['occupancy']
  t.retail_type = row['retail_type']
  t.retail_subtype = row['retail_subtype']
  t.retailer_size = row['retailer_size']
  t.retailer_price_point = row['retailer_price_point']
  t.retailer_nationality = row['retailer_nationality']
  t.additonal_retailer_info = row['additonal_retailer_info']
  t.comp = row['compcomp']
  t.zip_code = row['zip_code']
  t.xcoordinate = row['xcoordinate']
  t.ycoordinate = row['ycoordinate']


  t.save

end

puts "There are now #{Premise.count} rows in the transactions table"