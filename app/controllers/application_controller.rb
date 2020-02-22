class ApplicationController < ActionController::Base
	# forcé l'utilisateur a s'inscrire d"abord
	 before_action :authenticate_user!

	 before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username])
  end
end
