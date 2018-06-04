require 'test_helper'

class FriendshipControllerTest < ActionDispatch::IntegrationTest
  test "should get connect" do
    get friendship_connect_url
    assert_response :success
  end

end
