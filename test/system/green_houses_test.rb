require "application_system_test_case"

class GreenHousesTest < ApplicationSystemTestCase
  setup do
    @green_house = green_houses(:one)
  end

  test "visiting the index" do
    visit green_houses_url
    assert_selector "h1", text: "Green Houses"
  end

  test "creating a Green house" do
    visit green_houses_url
    click_on "New Green House"

    fill_in "Agricultural companies", with: @green_house.agricultural_companies_id
    fill_in "Area grooves", with: @green_house.area_grooves
    fill_in "Code greenhouse", with: @green_house.code_greenhouse
    check "Status" if @green_house.status
    click_on "Create Green house"

    assert_text "Green house was successfully created"
    click_on "Back"
  end

  test "updating a Green house" do
    visit green_houses_url
    click_on "Edit", match: :first

    fill_in "Agricultural companies", with: @green_house.agricultural_companies_id
    fill_in "Area grooves", with: @green_house.area_grooves
    fill_in "Code greenhouse", with: @green_house.code_greenhouse
    check "Status" if @green_house.status
    click_on "Update Green house"

    assert_text "Green house was successfully updated"
    click_on "Back"
  end

  test "destroying a Green house" do
    visit green_houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Green house was successfully destroyed"
  end
end
