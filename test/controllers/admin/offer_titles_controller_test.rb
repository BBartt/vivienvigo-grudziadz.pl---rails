require 'test_helper'

class Admin::OfferTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_offer_title = admin_offer_titles(:one)
  end

  test "should get index" do
    get admin_offer_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_offer_title_url
    assert_response :success
  end

  test "should create admin_offer_title" do
    assert_difference('Admin::OfferTitle.count') do
      post admin_offer_titles_url, params: { admin_offer_title: { title: @admin_offer_title.title } }
    end

    assert_redirected_to admin_offer_title_url(Admin::OfferTitle.last)
  end

  test "should show admin_offer_title" do
    get admin_offer_title_url(@admin_offer_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_offer_title_url(@admin_offer_title)
    assert_response :success
  end

  test "should update admin_offer_title" do
    patch admin_offer_title_url(@admin_offer_title), params: { admin_offer_title: { title: @admin_offer_title.title } }
    assert_redirected_to admin_offer_title_url(@admin_offer_title)
  end

  test "should destroy admin_offer_title" do
    assert_difference('Admin::OfferTitle.count', -1) do
      delete admin_offer_title_url(@admin_offer_title)
    end

    assert_redirected_to admin_offer_titles_url
  end
end
