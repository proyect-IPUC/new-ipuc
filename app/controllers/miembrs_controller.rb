class MiembrsController < ApplicationController
  before_action :set_miembr, only: [:show, :edit, :update, :destroy]

  # GET /miembrs
  # GET /miembrs.json
  def index
    @miembrs = Miembr.all
  end

  # GET /miembrs/1
  # GET /miembrs/1.json
  def show
  end

  # GET /miembrs/new
  def new
    @miembr = Miembr.new
  end

  # GET /miembrs/1/edit
  def edit
  end

  # POST /miembrs
  # POST /miembrs.json
  def create
    @miembr = Miembr.new(miembr_params)

    respond_to do |format|
      if @miembr.save
        format.html { redirect_to @miembr, notice: 'Miembr was successfully created.' }
        format.json { render :show, status: :created, location: @miembr }
      else
        format.html { render :new }
        format.json { render json: @miembr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /miembrs/1
  # PATCH/PUT /miembrs/1.json
  def update
    respond_to do |format|
      if @miembr.update(miembr_params)
        format.html { redirect_to @miembr, notice: 'Miembr was successfully updated.' }
        format.json { render :show, status: :ok, location: @miembr }
      else
        format.html { render :edit }
        format.json { render json: @miembr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /miembrs/1
  # DELETE /miembrs/1.json
  def destroy
    @miembr.destroy
    respond_to do |format|
      format.html { redirect_to miembrs_url, notice: 'Miembr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_miembr
      @miembr = Miembr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def miembr_params
      params.require(:miembr).permit(:nombre, :apellido, :cargo, :celular, :TelFijo)
    end
end
