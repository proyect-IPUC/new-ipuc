class OfrendanualsController < ApplicationController
  before_action :set_ofrendanual, only: [:show, :edit, :update, :destroy]

  # GET /ofrendanuals
  # GET /ofrendanuals.json
  def index
    @ofrendanuals = Ofrendanual.all
  end

  # GET /ofrendanuals/1
  # GET /ofrendanuals/1.json
  def show
    @ofrendanuals = Ofrendanual.find(params[:id])
  end

  # GET /ofrendanuals/new
  def new
    @ofrendanual = Ofrendanual.new
  end

  # GET /ofrendanuals/1/edit
  def edit
    @ofrendanuals = Ofrendanual.find(params[:id])
  end

  # POST /ofrendanuals
  # POST /ofrendanuals.json
  def create
    @ofrendanual = Ofrendanual.new(ofrendanual_params)
    render action: :new unless @ofrendanual.save
  end

  # PATCH/PUT /ofrendanuals/1
  # PATCH/PUT /ofrendanuals/1.json
  def update
   render action: :edit unless @ofrendanual.update_attributes(ofrendanual_params)
  end

  # DELETE /ofrendanuals/1
  # DELETE /ofrendanuals/1.json
  def destroy
    @ofrendanual.destroy
    respond_to do |format|
      format.html { redirect_to ofrendanuals_url, notice: 'Ofrendanual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrendanual
      @ofrendanual = Ofrendanual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrendanual_params
      params.require(:ofrendanual).permit(:valor, :año)
    end
end
