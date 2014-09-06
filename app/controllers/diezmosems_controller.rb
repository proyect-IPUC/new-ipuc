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
  end

  # GET /diezmosems/new
  def new
    @diezmosem = Diezmosem.new
  end

  # GET /diezmosems/1/edit
  def edit
  end

  # POST /diezmosems
  # POST /diezmosems.json
  def create
    @diezmosem = Diezmosem.new(diezmosem_params)

    respond_to do |format|
      if @diezmosem.save
        format.html { redirect_to @diezmosem, notice: 'Diezmosem was successfully created.' }
        format.json { render :show, status: :created, location: @diezmosem }
      else
        format.html { render :new }
        format.json { render json: @diezmosem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diezmosems/1
  # PATCH/PUT /diezmosems/1.json
  def update
    respond_to do |format|
      if @diezmosem.update(diezmosem_params)
        format.html { redirect_to @diezmosem, notice: 'Diezmosem was successfully updated.' }
        format.json { render :show, status: :ok, location: @diezmosem }
      else
        format.html { render :edit }
        format.json { render json: @diezmosem.errors, status: :unprocessable_entity }
      end
    end
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
