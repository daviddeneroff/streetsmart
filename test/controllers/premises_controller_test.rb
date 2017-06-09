require 'test_helper'

class PremisesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @premise = premises(:one)
  end

  test "should get index" do
    get premises_url
    assert_response :success
  end

  test "should get new" do
    get new_premise_url
    assert_response :success
  end

  test "should create premise" do
    assert_difference('Premise.count') do
      post premises_url, params: { premise: { active: @premise.active, approx_retail_sf: @premise.approx_retail_sf, availability_status: @premise.availability_status, basement_sf: @premise.basement_sf, bbl: @premise.bbl, block: @premise.block, block_appeal: @premise.block_appeal, borocode: @premise.borocode, borough: @premise.borough, building_address: @premise.building_address, building_status: @premise.building_status, ceiling: @premise.ceiling, class_mix: @premise.class_mix, contains_retail: @premise.contains_retail, corner_store: @premise.corner_store, demographic: @premise.demographic, footfall_index: @premise.footfall_index, frequency_of_demand: @premise.frequency_of_demand, gentrifcation_score: @premise.gentrifcation_score, ground_fl_sf: @premise.ground_fl_sf, growth_index: @premise.growth_index, location_appearance: @premise.location_appearance, location_quality: @premise.location_quality, lot: @premise.lot, mezzazine: @premise.mezzazine, number_of_retail_stories: @premise.number_of_retail_stories, occupancy_status: @premise.occupancy_status, percent_of_bldg_retail: @premise.percent_of_bldg_retail, premise_quality: @premise.premise_quality, premise_type: @premise.premise_type, quality_ranking: @premise.quality_ranking, retail_price_point: @premise.retail_price_point, retail_sub_type: @premise.retail_sub_type, retail_type: @premise.retail_type, retailer_footprint: @premise.retailer_footprint, retailer_heritage: @premise.retailer_heritage, retailer_occurence: @premise.retailer_occurence, retailer_value: @premise.retailer_value, retailer_viability: @premise.retailer_viability, social_media: @premise.social_media, stability_index: @premise.stability_index, step_up_or_down: @premise.step_up_or_down, street_frontage: @premise.street_frontage, street_frontage_ratio: @premise.street_frontage_ratio, submarket: @premise.submarket, submarket_health_index: @premise.submarket_health_index, target_shopper_profile: @premise.target_shopper_profile, tenant_name: @premise.tenant_name, total_bldg_front: @premise.total_bldg_front, total_number_of_retail_space: @premise.total_number_of_retail_space, total_retail_space: @premise.total_retail_space, upper_fl_sf: @premise.upper_fl_sf, venting: @premise.venting, viability_score: @premise.viability_score, walkability_score: @premise.walkability_score, xcord: @premise.xcord, ycord: @premise.ycord, zip_code: @premise.zip_code, zip_code_from: @premise.zip_code_from, zip_code_to: @premise.zip_code_to } }
    end

    assert_redirected_to premise_url(Premise.last)
  end

  test "should show premise" do
    get premise_url(@premise)
    assert_response :success
  end

  test "should get edit" do
    get edit_premise_url(@premise)
    assert_response :success
  end

  test "should update premise" do
    patch premise_url(@premise), params: { premise: { active: @premise.active, approx_retail_sf: @premise.approx_retail_sf, availability_status: @premise.availability_status, basement_sf: @premise.basement_sf, bbl: @premise.bbl, block: @premise.block, block_appeal: @premise.block_appeal, borocode: @premise.borocode, borough: @premise.borough, building_address: @premise.building_address, building_status: @premise.building_status, ceiling: @premise.ceiling, class_mix: @premise.class_mix, contains_retail: @premise.contains_retail, corner_store: @premise.corner_store, demographic: @premise.demographic, footfall_index: @premise.footfall_index, frequency_of_demand: @premise.frequency_of_demand, gentrifcation_score: @premise.gentrifcation_score, ground_fl_sf: @premise.ground_fl_sf, growth_index: @premise.growth_index, location_appearance: @premise.location_appearance, location_quality: @premise.location_quality, lot: @premise.lot, mezzazine: @premise.mezzazine, number_of_retail_stories: @premise.number_of_retail_stories, occupancy_status: @premise.occupancy_status, percent_of_bldg_retail: @premise.percent_of_bldg_retail, premise_quality: @premise.premise_quality, premise_type: @premise.premise_type, quality_ranking: @premise.quality_ranking, retail_price_point: @premise.retail_price_point, retail_sub_type: @premise.retail_sub_type, retail_type: @premise.retail_type, retailer_footprint: @premise.retailer_footprint, retailer_heritage: @premise.retailer_heritage, retailer_occurence: @premise.retailer_occurence, retailer_value: @premise.retailer_value, retailer_viability: @premise.retailer_viability, social_media: @premise.social_media, stability_index: @premise.stability_index, step_up_or_down: @premise.step_up_or_down, street_frontage: @premise.street_frontage, street_frontage_ratio: @premise.street_frontage_ratio, submarket: @premise.submarket, submarket_health_index: @premise.submarket_health_index, target_shopper_profile: @premise.target_shopper_profile, tenant_name: @premise.tenant_name, total_bldg_front: @premise.total_bldg_front, total_number_of_retail_space: @premise.total_number_of_retail_space, total_retail_space: @premise.total_retail_space, upper_fl_sf: @premise.upper_fl_sf, venting: @premise.venting, viability_score: @premise.viability_score, walkability_score: @premise.walkability_score, xcord: @premise.xcord, ycord: @premise.ycord, zip_code: @premise.zip_code, zip_code_from: @premise.zip_code_from, zip_code_to: @premise.zip_code_to } }
    assert_redirected_to premise_url(@premise)
  end

  test "should destroy premise" do
    assert_difference('Premise.count', -1) do
      delete premise_url(@premise)
    end

    assert_redirected_to premises_url
  end
end
