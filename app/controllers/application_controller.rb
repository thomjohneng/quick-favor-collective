class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(user)
    favors_path
  end

  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :story, :city, :industry])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :story, :city, :industry])
    end
end
