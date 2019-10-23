require "application_system_test_case"

class Admin::OrderImagesTest < ApplicationSystemTestCase
  setup do
    @admin_order_image = admin_order_images(:one)
  end

  test "visiting the index" do
    visit admin_order_images_url
    assert_selector "h1", text: "Admin/Order Images"
  end

  test "creating a Order image" do
    visit admin_order_images_url
    click_on "New Admin/Order Image"

    fill_in "Title", with: @admin_order_image.title
    click_on "Create Order image"

    assert_text "Order image was successfully created"
    click_on "Back"
  end

  test "updating a Order image" do
    visit admin_order_images_url
    click_on "Edit", match: :first

    fill_in "Title", with: @admin_order_image.title
    click_on "Update Order image"

    assert_text "Order image was successfully updated"
    click_on "Back"
  end

  test "destroying a Order image" do
    visit admin_order_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order image was successfully destroyed"
  end
end
