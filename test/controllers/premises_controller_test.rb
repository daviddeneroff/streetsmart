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
      post premises_url, params: { premise: { additonal_retailer_info: @premise.additonal_retailer_info, address: @premise.address, basement_sf: @premise.basement_sf, bbl: @premise.bbl, block: @premise.block, borough: @premise.borough, ceiling: @premise.ceiling, comp: @premise.comp, corner_store: @premise.corner_store, ground_floor_sf: @premise.ground_floor_sf, location_grade: @premise.location_grade, lot: @premise.lot, market: @premise.market, mezzanine_sf: @premise.mezzanine_sf, occupancy: @premise.occupancy, percent_of_total_retail: @premise.percent_of_total_retail, premise_grade: @premise.premise_grade, premise_type: @premise.premise_type, quality_grade: @premise.quality_grade, retail_subtype: @premise.retail_subtype, retail_type: @premise.retail_type, retailer_nationality: @premise.retailer_nationality, retailer_price_point: @premise.retailer_price_point, retailer_size: @premise.retailer_size, shopping_center: @premise.shopping_center, step_up_or_down: @premise.step_up_or_down, stories_of_retail: @premise.stories_of_retail, street_frontage: @premise.street_frontage, submarket: @premise.submarket, tenant: @premise.tenant, total_sf: @premise.total_sf, upper_floor_sf: @premise.upper_floor_sf, xcoordinate: @premise.xcoordinate, ycoordinate: @premise.ycoordinate, zip_code: @premise.zip_code } }
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
    patch premise_url(@premise), params: { premise: { additonal_retailer_info: @premise.additonal_retailer_info, address: @premise.address, basement_sf: @premise.basement_sf, bbl: @premise.bbl, block: @premise.block, borough: @premise.borough, ceiling: @premise.ceiling, comp: @premise.comp, corner_store: @premise.corner_store, ground_floor_sf: @premise.ground_floor_sf, location_grade: @premise.location_grade, lot: @premise.lot, market: @premise.market, mezzanine_sf: @premise.mezzanine_sf, occupancy: @premise.occupancy, percent_of_total_retail: @premise.percent_of_total_retail, premise_grade: @premise.premise_grade, premise_type: @premise.premise_type, quality_grade: @premise.quality_grade, retail_subtype: @premise.retail_subtype, retail_type: @premise.retail_type, retailer_nationality: @premise.retailer_nationality, retailer_price_point: @premise.retailer_price_point, retailer_size: @premise.retailer_size, shopping_center: @premise.shopping_center, step_up_or_down: @premise.step_up_or_down, stories_of_retail: @premise.stories_of_retail, street_frontage: @premise.street_frontage, submarket: @premise.submarket, tenant: @premise.tenant, total_sf: @premise.total_sf, upper_floor_sf: @premise.upper_floor_sf, xcoordinate: @premise.xcoordinate, ycoordinate: @premise.ycoordinate, zip_code: @premise.zip_code } }
    assert_redirected_to premise_url(@premise)
  end

  test "should destroy premise" do
    assert_difference('Premise.count', -1) do
      delete premise_url(@premise)
    end

    assert_redirected_to premises_url
  end
end
