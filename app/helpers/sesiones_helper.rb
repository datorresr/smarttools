module SesionesHelper

    # Logs in the given user.
  def log_in(usuario)
    session[:user_id] = usuario.id
  end
  
  # Remembers a user in a persistent session.
  def remember(usuario)
    usuario.remember
    cookies.permanent.signed[:usuario_id] = usuario.id
    cookies.permanent[:remember_token] = usuario.remember_token
  end
  

  # Returns true if the given user is the current user.
  def current_user?(usuario)
    usuario == current_user
  end

  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= Usuario.find_by(id: session[:user_id])
  end

  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
