require 'test_helper'

class SpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get spots_new_url
    assert_response :success
  end

  test "should get create" do
    get spots_create_url
    assert_response :success
  end

  test "should get index" do
    get spots_index_url
    assert_response :success
  end

end
