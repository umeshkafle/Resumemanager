require 'test_helper'

class CurriculumvitaesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get curriculumvitaes_index_url
    assert_response :success
  end

  test "should get show" do
    get curriculumvitaes_show_url
    assert_response :success
  end

  test "should get new" do
    get curriculumvitaes_new_url
    assert_response :success
  end

  test "should get create" do
    get curriculumvitaes_create_url
    assert_response :success
  end

  test "should get edit" do
    get curriculumvitaes_edit_url
    assert_response :success
  end

  test "should get update" do
    get curriculumvitaes_update_url
    assert_response :success
  end

  test "should get destroy" do
    get curriculumvitaes_destroy_url
    assert_response :success
  end

end
