require "application_system_test_case"

class ImagensTest < ApplicationSystemTestCase
  setup do
    @imagen = imagens(:one)
  end

  test "visiting the index" do
    visit imagens_url
    assert_selector "h1", text: "Imagens"
  end

  test "creating a Imagen" do
    visit imagens_url
    click_on "New Imagen"

    fill_in "Des", with: @imagen.des
    click_on "Create Imagen"

    assert_text "Imagen was successfully created"
    click_on "Back"
  end

  test "updating a Imagen" do
    visit imagens_url
    click_on "Edit", match: :first

    fill_in "Des", with: @imagen.des
    click_on "Update Imagen"

    assert_text "Imagen was successfully updated"
    click_on "Back"
  end

  test "destroying a Imagen" do
    visit imagens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imagen was successfully destroyed"
  end
end
