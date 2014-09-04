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
  end

  # GET /diezmotris/new
  def new
    @diezmotri = Diezmotri.new
  end

  # GET /diezmotris/1/edit
  def edit
  end

  # POST /diezmotris
  # POST /diezmotris.json
  def create
    @diezmotri = Diezmotri.new(diezmotri_params)

    respond_to do |format|
      if @diezmotri.save
        format.html { redirect_to @diezmotri, notice: 'Diezmotri was successfully created.' }
        format.json { render :show, status: :created, location: @diezmotri }
      else
        format.html { render :new }
        format.json { render json: @diezmotri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diezmotris/1
  # PATCH/PUT /diezmotris/1.json
  def update
    respond_to do |format|
      if @diezmotri.update(diezmotri_params)
        format.html { redirect_to @diezmotri, notice: 'Diezmotri was successfully updated.' }
        format.json { render :show, status: :ok, location: @diezmotri }
      else
        format.html { render :edit }
        format.json { render json: @diezmotri.errors, status: :unprocessable_entity }
      end
    end
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
