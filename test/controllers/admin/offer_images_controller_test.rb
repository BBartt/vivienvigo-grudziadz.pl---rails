require 'test_helper'

class Admin::OfferImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_offer_image = admin_offer_images(:one)
  end

  test "should get index" do
    get admin_offer_images_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_offer_image_url
    assert_response :success
  end

  test "should create admin_offer_image" do
    assert_difference('Admin::OfferImage.count') do
      post admin_offer_images_url, params: { admin_offer_image: { title: @admin_offer_image.title } }
    end

    assert_redirected_to admin_offer_image_url(Admin::OfferImage.last)
  end

  test "should show admin_offer_image" do
    get admin_offer_image_url(@admin_offer_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_offer_image_url(@admin_offer_image)
    assert_response :success
  end

  test "should update admin_offer_image" do
    patch admin_offer_image_url(@admin_offer_image), params: { admin_offer_image: { title: @admin_offer_image.title } }
    assert_redirected_to admin_offer_image_url(@admin_offer_image)
  end

  test "should destroy admin_offer_image" do
    assert_difference('Admin::OfferImage.count', -1) do
      delete admin_offer_image_url(@admin_offer_image)
    end

    assert_redirected_to admin_offer_images_url
  end
end
