require 'test_helper'

class VoluntalControllerTest < ActionController::TestCase
  test "should get create" do
    get :create
    assert_response :success
  end

  test "should get create_complete" do
    get :create_complete
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get edit_complete" do
    get :edit_complete
    assert_response :success
  end

  test "should get delete_complete" do
    get :delete_complete
    assert_response :success
  end

end
