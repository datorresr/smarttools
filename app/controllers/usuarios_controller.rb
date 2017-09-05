class UsuariosController < ApplicationController

  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]

  def show
    @usuario = Usuario.find(params[:id])
    @concursos = @usuario.concursos.paginate(page: params[:page])
  end


  def new
    @usuario = Usuario.new 
  end


  def create
    @usuario = Usuario.new(usuario_params)
    if @usuario.save
      log_in @usuario
      flash[:success] = "Bienvenido a SmartTools!"
      redirect_to @usuario
    else
      render 'new'
    end
  end


  private

  def usuario_params
      params.require(:usuario).permit(:nombre, :apellido, :email, :password, :password_confirmation)
  end

  # Before filters

  # Confirms the correct user.
  def correct_user
      @usuario = Usuario.find(params[:id])
      redirect_to(root_url) unless current_user?(@usuario)
  end



end


