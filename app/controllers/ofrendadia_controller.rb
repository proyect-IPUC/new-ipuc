class OfrendadiaController < ApplicationController
  before_action :set_ofrendadium, only: [:show, :edit, :update, :destroy]

  def index
    @ofrendadia = Ofrendadium.search(params[:search], params[:page])
  end

 
  def show
    @ofrendadium = Ofrendadium.find(params[:id])
  end

  
  def new
    @ofrendadium = Ofrendadium.new
  end

 
  def edit
    @ofrendadium = Ofrendadium.find(params[:id])
  end

  def create
    @ofrendadium = Ofrendadium.new(ofrendadium_params)
    render action: :new unless @ofrendadium.save
  end

  # PATCH/PUT /ofrendadia/1
  # PATCH/PUT /ofrendadia/1.json
  def update
     render action: :edit unless @ofrendadium.update_attributes(ofrendadium_params)
  end

  # DELETE /ofrendadia/1
  # DELETE /ofrendadia/1.json
  def destroy
    @ofrendadium.destroy
    respond_to do |format|
      format.html { redirect_to ofrendadia_url, notice: 'Ofrendadium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
   
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrendadium
      @ofrendadium = Ofrendadium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrendadium_params
      params.require(:ofrendadium).permit(:valor, :dia)
    end
end
