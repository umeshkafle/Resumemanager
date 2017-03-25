class UsersInvitationsController < Devise::InvitationsController
  def update
    p "this is an update page"

    super
  end

  def edit
    super
  end

  private

  def accept_resource
    resource = resource_class.accept_invitation!(update_resource_params)
  end

end
