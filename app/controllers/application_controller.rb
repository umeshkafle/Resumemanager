class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_filter :configure_permitted_parameters, if: :devise_controller?
  
  protected
  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
  end

  def configure_permitted_parameters
    #Only add some parameters
    devise_parameter_sanitizer.for(:accept_invitation).concat [:email]
    #Override accepted parameters
    devise_parameter_sanitizer.for(:accept_invitation) do |u| 
      u.permit(:email, :password, :password_confirmation, :invitation_token)
    end
end
end
