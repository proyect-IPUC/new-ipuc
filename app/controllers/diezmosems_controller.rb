class DiezmosemsController < ApplicationController
  before_action :set_diezmosem, only: [:show, :edit, :update, :destroy]

  # GET /diezmosems
  # GET /diezmosems.json
  def index
    @diezmosems = Diezmosem.all
  end

  # GET /diezmosems/1
  # GET /diezmosems/1.json
  def show
    @diezmosems = Diezmosem.find(params[:id])
  end

  # GET /diezmosems/new
  def new
    @diezmosem = Diezmosem.new
  end

  # GET /diezmosems/1/edit
  def edit
    @diezmosems = Diezmosem.find(params[:id])
  end

  # POST /diezmosems
  # POST /diezmosems.json
  def create
    @diezmosem = Diezmosem.new(diezmosem_params)
    render action: :new unless @diezmosem.save
  end

  # PATCH/PUT /diezmosems/1
  # PATCH/PUT /diezmosems/1.json
  def update
    render action: :edit unless @diezmosem.update_attributes(diezmosem_params)
  end

  # DELETE /diezmosems/1
  # DELETE /diezmosems/1.json
  def destroy
    @diezmosem.destroy
    respond_to do |format|
      format.html { redirect_to diezmosems_url, notice: 'Diezmosem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezmosem
      @diezmosem = Diezmosem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezmosem_params
      params.require(:diezmosem).permit(:valor, :semana)
    end
end
