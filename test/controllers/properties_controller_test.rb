require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @property = properties(:one)
  end

  test "should get index" do
    get properties_url, as: :json
    assert_response :success
  end

  test "should post search" do
    post search_properties_url, as: :json
    assert_response :success
  end

  test "should create property" do
    assert_difference('Property.count') do
      post properties_url, params: { property: { baths: @property.baths, beds: @property.beds, city: @property.city, latitude: @property.latitude, longitude: @property.longitude, price: @property.price, property_type: @property.property_type, sale_date: @property.sale_date, sq_ft: @property.sq_ft, state: @property.state, street: @property.street, zip: @property.zip } }, as: :json
    end

    assert_response 201
  end

  test "should show property" do
    get property_url(@property), as: :json
    assert_response :success
  end

  test "should update property" do
    patch property_url(@property), params: { property: { baths: @property.baths, beds: @property.beds, city: @property.city, latitude: @property.latitude, longitude: @property.longitude, price: @property.price, property_type: @property.property_type, sale_date: @property.sale_date, sq_ft: @property.sq_ft, state: @property.state, street: @property.street, zip: @property.zip } }, as: :json
    assert_response 200
  end

  test "should destroy property" do
    assert_difference('Property.count', -1) do
      delete property_url(@property), as: :json
    end

    assert_response 204
  end
end
