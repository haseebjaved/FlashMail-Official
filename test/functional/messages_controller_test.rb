require 'test_helper'

class MessagesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get later" do
    get :later
    assert_response :success
  end

  test "should get calendar" do
    get :calendar
    assert_response :success
  end

  test "should get call" do
    get :call
    assert_response :success
  end

  test "should get save" do
    get :save
    assert_response :success
  end

  test "should get delete" do
    get :delete
    assert_response :success
  end

end
