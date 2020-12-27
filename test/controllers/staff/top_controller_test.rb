require 'test_helper'

class Staff::TopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get staff_top_index_url
    assert_response :success
  end

end
