class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SesionesHelper
  include ConcursosHelper

  private

    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Por favor ingrese."
        redirect_to ingresar_url
      end
    end


end
