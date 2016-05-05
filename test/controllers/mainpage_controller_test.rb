require 'test_helper'

class MainpageControllerTest < ActionController::TestCase
  test "should get mainpage" do
    get :mainpage
    assert_response :success
  end

  test "should get addmemberpage" do
    get :addmemberpage
    assert_response :success
  end

end
