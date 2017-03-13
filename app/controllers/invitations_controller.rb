class InvitationsController < Devise::InvitationsController
	
  def new
  	@invitation = Invitation.new
  end

  def create
  	@invitation = Invitation.new(params[email: "new_invitation@example.com", name: "Umesh Kafle"])
  	if @invitation.save
  		redirect_to new_session_path
  	end
  end

  def edit
  end

  def update
  end
end
