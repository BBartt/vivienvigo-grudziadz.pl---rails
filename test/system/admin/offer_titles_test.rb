require "application_system_test_case"

class Admin::OfferTitlesTest < ApplicationSystemTestCase
  setup do
    @admin_offer_title = admin_offer_titles(:one)
  end

  test "visiting the index" do
    visit admin_offer_titles_url
    assert_selector "h1", text: "Admin/Offer Titles"
  end

  test "creating a Offer title" do
    visit admin_offer_titles_url
    click_on "New Admin/Offer Title"

    fill_in "Title", with: @admin_offer_title.title
    click_on "Create Offer title"

    assert_text "Offer title was successfully created"
    click_on "Back"
  end

  test "updating a Offer title" do
    visit admin_offer_titles_url
    click_on "Edit", match: :first

    fill_in "Title", with: @admin_offer_title.title
    click_on "Update Offer title"

    assert_text "Offer title was successfully updated"
    click_on "Back"
  end

  test "destroying a Offer title" do
    visit admin_offer_titles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Offer title was successfully destroyed"
  end
end
