class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  #
  # def flash_greeting(user)
  #   flash[:greeting] = "Hello, #{user.full_name}"
  # end

    # def default_url_options
    #   I18n.locale == I18n.default_locale ? {} : { lang: I18n.locale }
    # end

   def default_url_options(options = {})
     { lang: (I18n.locale if I18n.locale != I18n.default_locale) }
   end

  protected

  def after_sign_in_path_for(user)
    user.admin? ? admin_tests_path : tests_path
  end

 #  def after_sign_in_path_for(user)
 #   flash_greeting(user)
 #   user.admin? ? admin_tests_path : root_path
 # end
 #
 # def after_sign_out_path_for(_user)
 #   flash[:goodbye] = 'Goodbye'
 #   new_user_session_path
 # end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name])
  end

  def set_locale
    I18n.locale = I18n.locale_available?(params[:lang]) ? params[:lang] : I18n.default_locale
  end
end
