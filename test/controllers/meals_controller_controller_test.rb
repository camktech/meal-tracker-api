require 'test_helper'

class MealsControllerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get meals_controller_index_url
    assert_response :success
  end

  test "should get create" do
    get meals_controller_create_url
    assert_response :success
  end

  test "should get show" do
    get meals_controller_show_url
    assert_response :success
  end

  test "should get update" do
    get meals_controller_update_url
    assert_response :success
  end

  test "should get destroy" do
    get meals_controller_destroy_url
    assert_response :success
  end

end
