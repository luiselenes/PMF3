require "test_helper"

class GreenHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @green_house = green_houses(:one)
  end

  test "should get index" do
    get green_houses_url
    assert_response :success
  end

  test "should get new" do
    get new_green_house_url
    assert_response :success
  end

  test "should create green_house" do
    assert_difference('GreenHouse.count') do
      post green_houses_url, params: { green_house: { agricultural_companies_id: @green_house.agricultural_companies_id, area_grooves: @green_house.area_grooves, code_greenhouse: @green_house.code_greenhouse, status: @green_house.status } }
    end

    assert_redirected_to green_house_url(GreenHouse.last)
  end

  test "should show green_house" do
    get green_house_url(@green_house)
    assert_response :success
  end

  test "should get edit" do
    get edit_green_house_url(@green_house)
    assert_response :success
  end

  test "should update green_house" do
    patch green_house_url(@green_house), params: { green_house: { agricultural_companies_id: @green_house.agricultural_companies_id, area_grooves: @green_house.area_grooves, code_greenhouse: @green_house.code_greenhouse, status: @green_house.status } }
    assert_redirected_to green_house_url(@green_house)
  end

  test "should destroy green_house" do
    assert_difference('GreenHouse.count', -1) do
      delete green_house_url(@green_house)
    end

    assert_redirected_to green_houses_url
  end
end
