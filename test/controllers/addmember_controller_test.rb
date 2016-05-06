require 'test_helper'

class AddmemberControllerTest < ActionController::TestCase
  test "should get creatmember" do
    get :creatmember
    assert_response :success
  end

end
