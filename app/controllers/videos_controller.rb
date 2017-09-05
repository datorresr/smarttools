class VideosController < ApplicationController

 def show
   @concurso = Concurso.find(params[:id])
   @videos = @concurso.videos.paginate(page: params[:page])
 end


  def new
  end
  
  def create
#    @concurso = Concurso.find(params[:id])
    @video = @concurso.videos.build
    if @video.save
      flash[:success] = "Su video se ha subido exitosamente!"
      redirect_to "/sites/"+concurso.id.to_s
    else
      render 'static_page/home'
    end
  end

  def destroy
  end


  private

    def video_params
      params.require(:video).permit(:mensaje, :videopath)
    end
end
