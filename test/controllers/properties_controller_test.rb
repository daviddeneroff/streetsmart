require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url
    assert_response :success
  end

  test "should get new" do
    get new_property_url
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { address: @property.address, bldg_class: @property.bldg_class, block: @property.block, borough: @property.borough, building_depth: @property.building_depth, building_frontage: @property.building_frontage, building_sf: @property.building_sf, building_status: @property.building_status, built_far: @property.built_far, commercial_far: @property.commercial_far, commercial_sf: @property.commercial_sf, commercial_units: @property.commercial_units, facility_far: @property.facility_far, factory_sf: @property.factory_sf, garage_sf: @property.garage_sf, has_retail: @property.has_retail, land_use: @property.land_use, lot: @property.lot, lot_area: @property.lot_area, lot_depth: @property.lot_depth, lot_front: @property.lot_front, lot_type: @property.lot_type, market: @property.market, number_of_buildings: @property.number_of_buildings, number_of_floors: @property.number_of_floors, number_of_retail_premises: @property.number_of_retail_premises, office_sf: @property.office_sf, other_sf: @property.other_sf, ownername: @property.ownername, property_type: @property.property_type, resi_far: @property.resi_far, residential_sf: @property.residential_sf, residential_units: @property.residential_units, retail_sf: @property.retail_sf, retail_total_space: @property.retail_total_space, secondary_property_type: @property.secondary_property_type, storage_sf: @property.storage_sf, submarket: @property.submarket, total_units: @property.total_units, xcoord: @property.xcoord, ycoord: @property.ycoord, year_built: @property.year_built, zip_code: @property.zip_code, zonedist1: @property.zonedist1, zoning: @property.zoning } }
    end

    assert_redirected_to property_url(Property.last)
  end

  test "should show property" do
    get property_url(@property)
    assert_response :success
  end

  test "should get edit" do
    get edit_property_url(@property)
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { address: @property.address, bldg_class: @property.bldg_class, block: @property.block, borough: @property.borough, building_depth: @property.building_depth, building_frontage: @property.building_frontage, building_sf: @property.building_sf, building_status: @property.building_status, built_far: @property.built_far, commercial_far: @property.commercial_far, commercial_sf: @property.commercial_sf, commercial_units: @property.commercial_units, facility_far: @property.facility_far, factory_sf: @property.factory_sf, garage_sf: @property.garage_sf, has_retail: @property.has_retail, land_use: @property.land_use, lot: @property.lot, lot_area: @property.lot_area, lot_depth: @property.lot_depth, lot_front: @property.lot_front, lot_type: @property.lot_type, market: @property.market, number_of_buildings: @property.number_of_buildings, number_of_floors: @property.number_of_floors, number_of_retail_premises: @property.number_of_retail_premises, office_sf: @property.office_sf, other_sf: @property.other_sf, ownername: @property.ownername, property_type: @property.property_type, resi_far: @property.resi_far, residential_sf: @property.residential_sf, residential_units: @property.residential_units, retail_sf: @property.retail_sf, retail_total_space: @property.retail_total_space, secondary_property_type: @property.secondary_property_type, storage_sf: @property.storage_sf, submarket: @property.submarket, total_units: @property.total_units, xcoord: @property.xcoord, ycoord: @property.ycoord, year_built: @property.year_built, zip_code: @property.zip_code, zonedist1: @property.zonedist1, zoning: @property.zoning } }
    assert_redirected_to property_url(@property)
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property)
    end

    assert_redirected_to properties_url
  end
end
