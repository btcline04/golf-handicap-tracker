require 'test_helper'

class RoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get rounds_index_url
    assert_response :success
  end

  test "should get new" do
    get rounds_new_url
    assert_response :success
  end

  test "should get create" do
    get rounds_create_url
    assert_response :success
  end

end
