class DiezsemsController < ApplicationController
  before_action :set_diezsem, only: [:show, :edit, :update, :destroy]

  # GET /diezsems
  # GET /diezsems.json
  def index
    @diezsems = Diezsem.search(params[:search], params[:page])
  end

  # GET /diezsems/1
  # GET /diezsems/1.json
  def show
  end

  # GET /diezsems/new
  def new
    @diezsem = Diezsem.new
  end

  # GET /diezsems/1/edit
  def edit
  end

  # POST /diezsems
  # POST /diezsems.json
  def create
    @diezsem = Diezsem.new(diezsem_params)

    respond_to do |format|
      if @diezsem.save
        format.html { redirect_to @diezsem, notice: 'Diezsem was successfully created.' }
        format.json { render :show, status: :created, location: @diezsem }
      else
        format.html { render :new }
        format.json { render json: @diezsem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diezsems/1
  # PATCH/PUT /diezsems/1.json
  def update
    respond_to do |format|
      if @diezsem.update(diezsem_params)
        format.html { redirect_to @diezsem, notice: 'Diezsem was successfully updated.' }
        format.json { render :show, status: :ok, location: @diezsem }
      else
        format.html { render :edit }
        format.json { render json: @diezsem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diezsems/1
  # DELETE /diezsems/1.json
  def destroy
    @diezsem.destroy
    respond_to do |format|
      format.html { redirect_to diezsems_url, notice: 'Diezsem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezsem
      @diezsem = Diezsem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezsem_params
      params.require(:diezsem).permit(:valor, :dia)
    end
end
