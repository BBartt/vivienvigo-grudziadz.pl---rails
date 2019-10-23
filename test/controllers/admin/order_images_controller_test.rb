require 'test_helper'

class Admin::OrderImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_order_image = admin_order_images(:one)
  end

  test "should get index" do
    get admin_order_images_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_order_image_url
    assert_response :success
  end

  test "should create admin_order_image" do
    assert_difference('Admin::OrderImage.count') do
      post admin_order_images_url, params: { admin_order_image: { title: @admin_order_image.title } }
    end

    assert_redirected_to admin_order_image_url(Admin::OrderImage.last)
  end

  test "should show admin_order_image" do
    get admin_order_image_url(@admin_order_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_order_image_url(@admin_order_image)
    assert_response :success
  end

  test "should update admin_order_image" do
    patch admin_order_image_url(@admin_order_image), params: { admin_order_image: { title: @admin_order_image.title } }
    assert_redirected_to admin_order_image_url(@admin_order_image)
  end

  test "should destroy admin_order_image" do
    assert_difference('Admin::OrderImage.count', -1) do
      delete admin_order_image_url(@admin_order_image)
    end

    assert_redirected_to admin_order_images_url
  end
end
