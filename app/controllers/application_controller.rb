class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    devise_parameter_sanitizer.permit(:accept_invitation)
    devise_parameter_sanitizer.permit(:accept_invitation) do |u| 
      u.permit(:email, :password, :password_confirmation, :invitation_token, :username)
    end
  end

end
