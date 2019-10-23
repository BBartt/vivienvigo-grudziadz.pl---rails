require "application_system_test_case"

class Admin::GalleryImagesTest < ApplicationSystemTestCase
  setup do
    @admin_gallery_image = admin_gallery_images(:one)
  end

  test "visiting the index" do
    visit admin_gallery_images_url
    assert_selector "h1", text: "Admin/Gallery Images"
  end

  test "creating a Gallery image" do
    visit admin_gallery_images_url
    click_on "New Admin/Gallery Image"

    fill_in "Title", with: @admin_gallery_image.title
    click_on "Create Gallery image"

    assert_text "Gallery image was successfully created"
    click_on "Back"
  end

  test "updating a Gallery image" do
    visit admin_gallery_images_url
    click_on "Edit", match: :first

    fill_in "Title", with: @admin_gallery_image.title
    click_on "Update Gallery image"

    assert_text "Gallery image was successfully updated"
    click_on "Back"
  end

  test "destroying a Gallery image" do
    visit admin_gallery_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gallery image was successfully destroyed"
  end
end
