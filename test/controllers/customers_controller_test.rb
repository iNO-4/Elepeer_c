require 'test_helper'

class CustomersControllerTest < ActionDispatch::IntegrationTest
  test "should get mypage" do
    get customers_mypage_url
    assert_response :success
  end

  test "should get show" do
    get customers_show_url
    assert_response :success
  end

  test "should get edit" do
    get customers_edit_url
    assert_response :success
  end

  test "should get update" do
    get customers_update_url
    assert_response :success
  end

  test "should get index" do
    get customers_index_url
    assert_response :success
  end

  test "should get unsubscribe" do
    get customers_unsubscribe_url
    assert_response :success
  end

  test "should get thanks" do
    get customers_thanks_url
    assert_response :success
  end

end
