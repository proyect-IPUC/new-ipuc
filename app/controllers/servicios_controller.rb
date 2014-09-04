class ServiciosController < ApplicationController
  before_action :set_servicio, only: [:show, :edit, :update, :destroy]

  # GET /servicios
  # GET /servicios.json
  def index
    @servicios = Servicio.all
  end

  # GET /servicios/1
  # GET /servicios/1.json
  def show
    @servicios = Servicio.find(params[:id])
  end

  # GET /servicios/new
  def new
    @servicio = Servicio.new
  end

  # GET /servicios/1/edit
  def edit
    @servicios = Servicio.find(params[:id])
  end

  # POST /servicios
  # POST /servicios.json
  def create
    @servicio = Servicio.new(servicio_params)
    render action: :new unless @servicio.save
      
  end

  # PATCH/PUT /servicios/1
  # PATCH/PUT /servicios/1.json
  def update
    render action: :edit unless @servicio.update_attributes(servicio_params)
  end

  # DELETE /servicios/1
  # DELETE /servicios/1.json
  def destroy
    @servicio.destroy
    respond_to do |format|
      format.html { redirect_to servicios_url, notice: 'Servicio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicio_params
      params.require(:servicio).permit(:empresa, :valor, :dia_de_pago)
    end
end
