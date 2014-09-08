class OtrosingsController < ApplicationController
  before_action :set_otrosing, only: [:show, :edit, :update, :destroy]

  # GET /otrosings
  # GET /otrosings.json
  def index
    @otrosings = Otrosing.all
  end

  # GET /otrosings/1
  # GET /otrosings/1.json
  def show
      @otrosings = Otrosing.find(params[:id])
  end

  # GET /otrosings/new
  def new
    @otrosing = Otrosing.new
  end

  # GET /otrosings/1/edit
  def edit
     @otrosings = Otrosing.find(params[:id])
  end

  # POST /otrosings
  # POST /otrosings.json
  def create
    @otrosing = Otrosing.new(otrosing_params)
    render action: :new unless @otrosing.save
  end

  # PATCH/PUT /otrosings/1
  # PATCH/PUT /otrosings/1.json
  def update
    render action: :edit unless @otrosing.update_attributes(otrosing_params)
  end

  # DELETE /otrosings/1
  # DELETE /otrosings/1.json
  def destroy
    @otrosing.destroy
    respond_to do |format|
      format.html { redirect_to otrosings_url, notice: 'Otrosing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_otrosing
      @otrosing = Otrosing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def otrosing_params
      params.require(:otrosing).permit(:actividad, :valor, :dia)
    end
end
