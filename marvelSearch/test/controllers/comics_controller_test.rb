require 'test_helper'

class ComicsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get comics_index_url
    assert_response :success
  end

  test "should get create" do
    get comics_create_url
    assert_response :success
  end

  test "should get destroy" do
    get comics_destroy_url
    assert_response :success
  end

end
