class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SesionesHelper
<<<<<<< HEAD
  include ConcursosHelper
=======
>>>>>>> 76412821a99259e32821c3d2033bfb90a87bc0d6

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
