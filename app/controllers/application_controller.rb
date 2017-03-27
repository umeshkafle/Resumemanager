class ApplicationController < ActionController::Base

  before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  protected

  def configure_permitted_parameters
    #Only add some parameters
    # devise_parameter_sanitizer.permit(:accept_invitation)
    #Override accepted parameters
    devise_parameter_sanitizer.permit(:sign_up) do |u|
      u.permit(:email, :password, :password_confirmation, :invitation_token, :username)
    end

    devise_parameter_sanitizer.permit(:accept_invitation) do |u|
      u.permit(:email, :password, :password_confirmation, :invitation_token, :username)
    end
  end
end
