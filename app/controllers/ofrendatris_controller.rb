class OfrendatrisController < ApplicationController
  before_action :set_ofrendatri, only: [:show, :edit, :update, :destroy]

  # GET /ofrendatris
  # GET /ofrendatris.json
  def index
    @ofrendatris = Ofrendatri.all
  end

  # GET /ofrendatris/1
  # GET /ofrendatris/1.json
  def show
    @ofrendatris = Ofrendatri.find(params[:id])
  end

  # GET /ofrendatris/new
  def new
    @ofrendatri = Ofrendatri.new
  end

  # GET /ofrendatris/1/edit
  def edit
    @ofrendatris = Ofrendatri.find(params[:id])
  end

  # POST /ofrendatris
  # POST /ofrendatris.json
  def create
    @ofrendatri = Ofrendatri.new(ofrendatri_params)
    render action: :new unless @ofrendatri.save
  end

  # PATCH/PUT /ofrendatris/1
  # PATCH/PUT /ofrendatris/1.json
  def update
   render action: :edit unless @ofrendatri.update_attributes(ofrendatri_params)
  end

  # DELETE /ofrendatris/1
  # DELETE /ofrendatris/1.json
  def destroy
    @ofrendatri.destroy
    respond_to do |format|
      format.html { redirect_to ofrendatris_url, notice: 'Ofrendatri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrendatri
      @ofrendatri = Ofrendatri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrendatri_params
      params.require(:ofrendatri).permit(:valor, :trimestre)
    end
end
