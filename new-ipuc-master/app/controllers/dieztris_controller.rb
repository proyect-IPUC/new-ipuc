class DieztrisController < ApplicationController
  before_action :set_dieztri, only: [:show, :edit, :update, :destroy]

  # GET /dieztris
  # GET /dieztris.json
  def index
    @dieztris = Dieztri.all
  end

  # GET /dieztris/1
  # GET /dieztris/1.json
  def show
  end

  # GET /dieztris/new
  def new
    @dieztri = Dieztri.new
  end

  # GET /dieztris/1/edit
  def edit
  end

  # POST /dieztris
  # POST /dieztris.json
  def create
    @dieztri = Dieztri.new(dieztri_params)

    respond_to do |format|
      if @dieztri.save
        format.html { redirect_to @dieztri, notice: 'Dieztri was successfully created.' }
        format.json { render :show, status: :created, location: @dieztri }
      else
        format.html { render :new }
        format.json { render json: @dieztri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dieztris/1
  # PATCH/PUT /dieztris/1.json
  def update
    respond_to do |format|
      if @dieztri.update(dieztri_params)
        format.html { redirect_to @dieztri, notice: 'Dieztri was successfully updated.' }
        format.json { render :show, status: :ok, location: @dieztri }
      else
        format.html { render :edit }
        format.json { render json: @dieztri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dieztris/1
  # DELETE /dieztris/1.json
  def destroy
    @dieztri.destroy
    respond_to do |format|
      format.html { redirect_to dieztris_url, notice: 'Dieztri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dieztri
      @dieztri = Dieztri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dieztri_params
      params.require(:dieztri).permit(:valor, :dia)
    end
end
