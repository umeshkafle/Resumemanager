require 'test_helper'

class UsersInvitationsControllerTest < ActionDispatch::IntegrationTest
  test "should get edit" do
    get users_invitations_edit_url
    assert_response :success
  end

  test "should get update" do
    get users_invitations_update_url
    assert_response :success
  end

end
