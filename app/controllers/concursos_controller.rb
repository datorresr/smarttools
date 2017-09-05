class ConcursosController < ApplicationController
#  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  


  def show
    @concurso = Concurso.find(params[:id])
    @videos = @concurso.videos.paginate(page: params[:page])
    @video = @concurso.videos.build
  end


  def create
    @concurso = current_user.concursos.build(concurso_params)
    if @concurso.save
      flash[:success] = "Concurso Creado!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/inicio'
    end
  end

  def destroy
    @concurso.destroy
    flash[:success] = "Concurso eliminado"
    redirect_to request.referrer || root_url
  end

  private

    def concurso_params
      params.require(:concurso).permit(:nombre, :fechaInicio, :fechaFin, :descripcion, :imagen)
    end

    def correct_user
      @concurso = current_user.concursos.find_by(id: params[:id])
      redirect_to root_url if @concurso.nil?
    end
end
