require 'test_helper'

class TrackOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get track_orders_new_url
    assert_response :success
  end

  test "should get create" do
    get track_orders_create_url
    assert_response :success
  end

end
