class DirectivasController < ApplicationController
  before_action :set_directiva, only: [:show, :edit, :update, :destroy]


  # GET /directivas
  # GET /directivas.json
  def index
    @directivas = Directiva.all
  end

  # GET /directivas/1
  # GET /directivas/1.json
  def show
  end

  # GET /directivas/new
  def new
    @directiva = Directiva.new
  end

  # GET /directivas/1/edit
  def edit
    @directiva = Directiva.find(params[:id])
     unauthorized! if cannot? :edit, @directiva
  end

  # POST /directivas
  # POST /directivas.json
  def create
    @directiva = Directiva.new(directiva_params)

    respond_to do |format|
      if @directiva.save
        format.html { redirect_to @directiva, notice: 'Directiva Creada Exitosamente.' }
        format.json { render :show, status: :created, location: @directiva }
      else
        format.html { render :new }
        format.json { render json: @directiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /directivas/1
  # PATCH/PUT /directivas/1.json
  def update
    respond_to do |format|
      if @directiva.update(directiva_params)
        format.html { redirect_to @directiva, notice: 'Directiva Modificada Exitosamente.' }
        format.json { render :show, status: :ok, location: @directiva }
      else
        format.html { render :edit }
        format.json { render json: @directiva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /directivas/1
  # DELETE /directivas/1.json
  def destroy
    @directiva.destroy
    respond_to do |format|
      format.html { redirect_to directivas_url, notice: 'Directiva Eliminada Exitosamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_directiva
      @directiva = Directiva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def directiva_params
      params.require(:directiva).permit(:nombre, :descripcion)
    end
end
