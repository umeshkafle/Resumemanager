require 'test_helper'

class SummariesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get summaries_index_url
    assert_response :success
  end

  test "should get show" do
    get summaries_show_url
    assert_response :success
  end

  test "should get new" do
    get summaries_new_url
    assert_response :success
  end

  test "should get create" do
    get summaries_create_url
    assert_response :success
  end

  test "should get edit" do
    get summaries_edit_url
    assert_response :success
  end

  test "should get update" do
    get summaries_update_url
    assert_response :success
  end

  test "should get destroy" do
    get summaries_destroy_url
    assert_response :success
  end

end
