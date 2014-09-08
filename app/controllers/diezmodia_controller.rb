class DiezmodiaController < ApplicationController
  before_action :set_diezmodium, only: [:show, :edit, :update, :destroy]

  # GET /diezmodia
  # GET /diezmodia.json
  def index
    @diezmodium = Diezmodium.all
  end

  # GET /diezmodia/1
  # GET /diezmodia/1.json
  def show
    @diezmodium = Diezmodium.find(params[:id])
  end

  # GET /diezmodia/new
  def new
    @diezmodium = Diezmodium.new
  end

  # GET /diezmodia/1/edit
  def edit
    @diezmodium = Diezmodium.find(params[:id])
  end

  # POST /diezmodia
  # POST /diezmodia.json
  def create
    @diezmodium = Diezmodium.new(diezmodium_params)
    render action: :new unless @diezmodium.save
  end

  # PATCH/PUT /diezmodia/1
  # PATCH/PUT /diezmodia/1.json
  def update
    render action: :edit unless @diezmodium.update_attributes(diezmodium_params)
  end

  # DELETE /diezmodia/1
  # DELETE /diezmodia/1.json
  def destroy
    @diezmodium.destroy
    respond_to do |format|
      format.html { redirect_to diezmodia_url, notice: 'Diezmodium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezmodium
      @diezmodium = Diezmodium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezmodium_params
      params.require(:diezmodium).permit(:valor, :dia)
    end
end
