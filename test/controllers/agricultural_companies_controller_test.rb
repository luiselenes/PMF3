require "test_helper"

class AgriculturalCompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agricultural_company = agricultural_companies(:one)
  end

  test "should get index" do
    get agricultural_companies_url
    assert_response :success
  end

  test "should get new" do
    get new_agricultural_company_url
    assert_response :success
  end

  test "should create agricultural_company" do
    assert_difference('AgriculturalCompany.count') do
      post agricultural_companies_url, params: { agricultural_company: { address: @agricultural_company.address, name: @agricultural_company.name, phone: @agricultural_company.phone, responsable: @agricultural_company.responsable } }
    end

    assert_redirected_to agricultural_company_url(AgriculturalCompany.last)
  end

  test "should show agricultural_company" do
    get agricultural_company_url(@agricultural_company)
    assert_response :success
  end

  test "should get edit" do
    get edit_agricultural_company_url(@agricultural_company)
    assert_response :success
  end

  test "should update agricultural_company" do
    patch agricultural_company_url(@agricultural_company), params: { agricultural_company: { address: @agricultural_company.address, name: @agricultural_company.name, phone: @agricultural_company.phone, responsable: @agricultural_company.responsable } }
    assert_redirected_to agricultural_company_url(@agricultural_company)
  end

  test "should destroy agricultural_company" do
    assert_difference('AgriculturalCompany.count', -1) do
      delete agricultural_company_url(@agricultural_company)
    end

    assert_redirected_to agricultural_companies_url
  end
end
