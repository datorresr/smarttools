class StaticPagesController < ApplicationController
  def inicio
    if logged_in?
      @concurso  = current_user.concursos.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end 
  end

  def nosotros
  end

  def ingresar
  end

  def contacto
  end
end
