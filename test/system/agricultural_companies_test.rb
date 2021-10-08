require "application_system_test_case"

class AgriculturalCompaniesTest < ApplicationSystemTestCase
  setup do
    @agricultural_company = agricultural_companies(:one)
  end

  test "visiting the index" do
    visit agricultural_companies_url
    assert_selector "h1", text: "Agricultural Companies"
  end

  test "creating a Agricultural company" do
    visit agricultural_companies_url
    click_on "New Agricultural Company"

    fill_in "Address", with: @agricultural_company.address
    fill_in "Name", with: @agricultural_company.name
    fill_in "Phone", with: @agricultural_company.phone
    fill_in "Responsable", with: @agricultural_company.responsable
    click_on "Create Agricultural company"

    assert_text "Agricultural company was successfully created"
    click_on "Back"
  end

  test "updating a Agricultural company" do
    visit agricultural_companies_url
    click_on "Edit", match: :first

    fill_in "Address", with: @agricultural_company.address
    fill_in "Name", with: @agricultural_company.name
    fill_in "Phone", with: @agricultural_company.phone
    fill_in "Responsable", with: @agricultural_company.responsable
    click_on "Update Agricultural company"

    assert_text "Agricultural company was successfully updated"
    click_on "Back"
  end

  test "destroying a Agricultural company" do
    visit agricultural_companies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agricultural company was successfully destroyed"
  end
end
