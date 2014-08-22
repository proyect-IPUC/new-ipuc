class ModulosController < ApplicationController
  before_action :set_modulo, only: [:show, :edit, :update, :destroy, :index, :new, :create]

  # GET /modulos
  # GET /modulos.json
  def index
    @modulos = @directiva.modulos.all # lista solo los ingenieros de ese proyecto no todos
  end

  # GET /modulos/1
  # GET /modulos/1.json
  def show
  end

  # GET /modulos/new
  def new
    @modulo = Modulo.new
  end

  # GET /modulos/1/edit
  def edit
  end

  # POST /modulos
  # POST /modulos.json
  def create
    @modulo = Modulo.new(modulo_params)
    @modulo.directiva_id = @directiva.id
    respond_to do |format|
      if @modulo.save
        format.html { redirect_to directiva_modulos_path(@directiva), notice: 'Modulo was successfully created.' }
        format.json { render :show, status: :created, location: @modulo }
      else
        format.html { render :new }
        format.json { render json: @modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /modulos/1
  # PATCH/PUT /modulos/1.json
  def update
    respond_to do |format|
      if @modulo.update(modulo_params)
        format.html { redirect_to directiva_modulos_path(@directiva), notice: 'Modulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @modulo }
      else
        format.html { render :edit }
        format.json { render json: @modulo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /modulos/1
  # DELETE /modulos/1.json
  def destroy
    @modulo.destroy
    respond_to do |format|
      format.html { redirect_to directiva_modulos_url(@directiva), notice: 'Modulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_modulo
      @directiva = Directiva.find(params[:directiva_id]) # recupera la directiva
      @modulo = Modulo.find(params[:id])if params[:id] # recupera el id solo si lo envian
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def modulo_params
      params.require(:modulo).permit(:miembros, :eventos, :plan_trabajo, :directiva_id)
    end
end
