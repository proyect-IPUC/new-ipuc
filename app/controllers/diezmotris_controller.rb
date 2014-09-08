class DiezmotrisController < ApplicationController
  before_action :set_diezmotri, only: [:show, :edit, :update, :destroy]

  # GET /diezmotris
  # GET /diezmotris.json
  def index
    @diezmotris = Diezmotri.all
  end

  # GET /diezmotris/1
  # GET /diezmotris/1.json
  def show
        @diezmotris = Diezmotri.find(params[:id])
  end

  # GET /diezmotris/new
  def new
    @diezmotri = Diezmotri.new
  end

  # GET /diezmotris/1/edit
  def edit
        @diezmotris = Diezmotri.find(params[:id])
  end

  # POST /diezmotris
  # POST /diezmotris.json
  def create
    @diezmotri = Diezmotri.new(diezmotri_params)
    render action: :new unless @diezmotri.save
  end

  # PATCH/PUT /diezmotris/1
  # PATCH/PUT /diezmotris/1.json
  def update
           render action: :edit unless @diezmotri.update_attributes(diezmotri_params)
  end

  # DELETE /diezmotris/1
  # DELETE /diezmotris/1.json
  def destroy
    @diezmotri.destroy
    respond_to do |format|
      format.html { redirect_to diezmotris_url, notice: 'Diezmotri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezmotri
      @diezmotri = Diezmotri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezmotri_params
      params.require(:diezmotri).permit(:valor, :trimestre)
    end
end
