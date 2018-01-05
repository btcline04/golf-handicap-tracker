require 'test_helper'

class BagControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bag_index_url
    assert_response :success
  end

  test "should get new" do
    get bag_new_url
    assert_response :success
  end

  test "should get edit" do
    get bag_edit_url
    assert_response :success
  end

end
