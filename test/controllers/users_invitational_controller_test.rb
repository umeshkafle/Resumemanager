require 'test_helper'

class UsersInvitationalControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get users_invitational_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_invitational_update_url
    assert_response :success
  end

end
