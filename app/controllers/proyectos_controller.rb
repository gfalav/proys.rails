class ProyectosController < ApplicationController
  before_action :set_proyecto, only: [:show, :update, :destroy]

  # GET /proyectos
  def index
    @proyectos = Proyecto.all

    render json: @proyectos
  end

  # GET /proyectos/1
  def show
    render json: @proyecto
  end

  # POST /proyectos
  def create
    @proyecto = Proyecto.new(proyecto_params)

    if @proyecto.save
      render json: @proyecto, status: :created, location: @proyecto
    else
      render json: @proyecto.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /proyectos/1
  def update
    if @proyecto.update(proyecto_params)
      render json: @proyecto
    else
      render json: @proyecto.errors, status: :unprocessable_entity
    end
  end

  # DELETE /proyectos/1
  def destroy
    @proyecto.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_proyecto
      @proyecto = Proyecto.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def proyecto_params
      params.require(:proyecto).permit(:nombre, :desc, :proyectista, :comitente, :contratista, :expediente, :ubicacion)
    end
end
