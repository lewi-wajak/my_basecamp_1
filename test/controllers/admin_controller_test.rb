require "test_helper"

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get manager" do
    get admin_manager_url
    assert_response :success
  end
end
