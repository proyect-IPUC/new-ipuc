class EventosController < ApplicationController
  before_action :set_evento, only: [:show, :edit, :update, :destroy]

  # GET /eventos
  # GET /eventos.json
  def index
    @eventos = Evento.all
  end

  # GET /eventos/1
  # GET /eventos/1.json
  def show
    @eventos = Eventos.find(params[:id])
  end

  # GET /eventos/new
  def new
    @evento = Evento.new
  end

  # GET /eventos/1/edit
  def edit
    @eventos = Evento.find(params[:id])
  end

  # POST /eventos
  # POST /eventos.json
  def create
    @evento = Evento.new(evento_params)
    render action: :new unless @evento.save

  end

  # PATCH/PUT /eventos/1
  # PATCH/PUT /eventos/1.json
  def update
    render action: :edit unless @evento.update_attributes(evento_params)
  end

  # DELETE /eventos/1
  # DELETE /eventos/1.json
  def destroy
    @evento.destroy
    respond_to do |format|
      format.html { redirect_to eventos_url, notice: 'Evento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evento
      @evento = Evento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def evento_params
      params.require(:evento).permit(:evento, :valor, :dia)
    end
end
