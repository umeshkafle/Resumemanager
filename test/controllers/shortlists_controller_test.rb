require 'test_helper'

class ShortlistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get shortlists_index_url
    assert_response :success
  end

  test "should get show" do
    get shortlists_show_url
    assert_response :success
  end

  test "should get new" do
    get shortlists_new_url
    assert_response :success
  end

  test "should get create" do
    get shortlists_create_url
    assert_response :success
  end

  test "should get edit" do
    get shortlists_edit_url
    assert_response :success
  end

  test "should get update" do
    get shortlists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get shortlists_destroy_url
    assert_response :success
  end

end
