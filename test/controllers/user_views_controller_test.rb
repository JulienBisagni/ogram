require 'test_helper'

class UserViewsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_views_create_url
    assert_response :success
  end

end
