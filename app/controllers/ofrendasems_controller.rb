class OfrendasemsController < ApplicationController

  before_action :set_ofrendasem, only: [:show, :edit, :update, :destroy]

  def index
      @ofrendasems = Ofrendasem.search(params[:search], params[:page])
  end

  def show
    @ofrendasems = Ofrendasem.find(params[:id])
  end

  def new
    @ofrendasem = Ofrendasem.new
  end

  def edit
    @ofrendasems = Ofrendasem.find(params[:id])
  end

  def create
    @ofrendasem = Ofrendasem.new(ofrendasem_params)
    render action: :new unless @ofrendasem.save
  end

  def update
   render action: :edit unless @ofrendasem.update_attributes(ofrendasem_params)
  end

  def destroy
    @ofrendasem.destroy
    respond_to do |format|
      format.html { redirect_to ofrendasems_url, notice: 'Ofrendasem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def insert_ofrendasems
      o = Ofrendasem.new
      o.cargar_ofrendasem(params[:valor])
      respond_to do |format|
          format.html { redirect_to ofrendasems_url, notice: 'se a cargado correctamente.' }
          format.json { head :no_content }
      end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_ofrendasem
    @ofrendasem = Ofrendasem.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def ofrendasem_params
    params.require(:ofrendasem).permit(:valor, :dia)
  end

end
