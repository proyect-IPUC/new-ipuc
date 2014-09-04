class OfrendasemsController < ApplicationController

  before_action :set_ofrendasem, only: [:show, :edit, :update, :destroy]

  def index
      @ofrendasems = Ofrendasem.search(params[:search], params[:page])
  end

  def show
  end

  def new
    @ofrendasem = Ofrendasem.new
  end

  def edit
  end

  def create
    @ofrendasem = Ofrendasem.new(ofrendasem_params)
    respond_to do |format|
      if @ofrendasem.save
        format.html { redirect_to @ofrendasem, notice: 'Ofrendasem was successfully created.' }
        format.json { render :show, status: :created, location: @ofrendasem }
      else
        format.html { render :new }
        format.json { render json: @ofrendasem.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @ofrendasem.update(ofrendasem_params)
        format.html { redirect_to @ofrendasem, notice: 'Ofrendasem was successfully updated.' }
        format.json { render :show, status: :ok, location: @ofrendasem }
      else
        format.html { render :edit }
        format.json { render json: @ofrendasem.errors, status: :unprocessable_entity }
      end
    end
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
