require 'csv'

class Premise < ApplicationRecord
  def self.to_csv
    attributes = %w{building_address tenant_name occupancy_status availability_status retail_type retail_sub_type retailer_footprint retail_price_point retailer_heritage retailer_value retailer_occurence location_quality premise_quality quality_ranking class_mix corner_store percent_of_bldg_retail premise_type basement_sf ground_fl_sf mezzazine upper_fl_sf step_up_or_down number_of_retail_stories street_frontage approx_retail_sf street_frontage_ratio ceiling contains_retail submarket total_number_of_retail_space total_retail_space zip_code xcord ycord building_status borocode borough bbl block lot frequency_of_demand location_appearance walkability_score viability_score demographic zip_code_from zip_code_to submarket_health_index gentrifcation_score footfall_index block_appeal target_shopper_profile stability_index growth_index retailer_viability venting social_media total_bldg_front active mailer_building_number mailer_street mailer_street_type mailer_city mailer_state mailer_zip_code location_quality_grade premise_quality_grade listing_brokerage listing_broker_name listing_broker_email listing_broker_number tenant_contact_name tenant_contact_phone_number tenant_contact_email tenant_contact_address owner_contact_name owner_contact_phone_number owner_contact_email owner_contact_address unique_id_addedem unique_id_complete corridor lattitude longitude venting previous_tenant notes}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |user|
        csv << attributes.map{ |attr| user.send(attr) }
      end
    end
  end

  def next
    self.class.where("id > ?", id).first
  end

  def previous
    self.class.where("id < ?", id).last
  end
  
end