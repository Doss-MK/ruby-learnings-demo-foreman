require "test_helper"

class CacheControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get cache_index_url
    assert_response :success
  end
end
