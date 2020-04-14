# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username name first_name last_name email phone_number city country address postal_code])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username name first_name last_name email phone_number city country address postal_code])
  end
end
