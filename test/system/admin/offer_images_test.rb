require "application_system_test_case"

class Admin::OfferImagesTest < ApplicationSystemTestCase
  setup do
    @admin_offer_image = admin_offer_images(:one)
  end

  test "visiting the index" do
    visit admin_offer_images_url
    assert_selector "h1", text: "Admin/Offer Images"
  end

  test "creating a Offer image" do
    visit admin_offer_images_url
    click_on "New Admin/Offer Image"

    fill_in "Title", with: @admin_offer_image.title
    click_on "Create Offer image"

    assert_text "Offer image was successfully created"
    click_on "Back"
  end

  test "updating a Offer image" do
    visit admin_offer_images_url
    click_on "Edit", match: :first

    fill_in "Title", with: @admin_offer_image.title
    click_on "Update Offer image"

    assert_text "Offer image was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer image" do
    visit admin_offer_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer image was successfully destroyed"
  end
end
