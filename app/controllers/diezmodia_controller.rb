class DiezmodiaController < ApplicationController
  before_action :set_diezmodium, only: [:show, :edit, :update, :destroy]

  # GET /diezmodia
  # GET /diezmodia.json
  def index
    @diezmodia = Diezmodium.all
  end

  # GET /diezmodia/1
  # GET /diezmodia/1.json
  def show
  end

  # GET /diezmodia/new
  def new
    @diezmodium = Diezmodium.new
  end

  # GET /diezmodia/1/edit
  def edit
  end

  # POST /diezmodia
  # POST /diezmodia.json
  def create
    @diezmodium = Diezmodium.new(diezmodium_params)

    respond_to do |format|
      if @diezmodium.save
        format.html { redirect_to @diezmodium, notice: 'Diezmodium was successfully created.' }
        format.json { render :show, status: :created, location: @diezmodium }
      else
        format.html { render :new }
        format.json { render json: @diezmodium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diezmodia/1
  # PATCH/PUT /diezmodia/1.json
  def update
    respond_to do |format|
      if @diezmodium.update(diezmodium_params)
        format.html { redirect_to @diezmodium, notice: 'Diezmodium was successfully updated.' }
        format.json { render :show, status: :ok, location: @diezmodium }
      else
        format.html { render :edit }
        format.json { render json: @diezmodium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diezmodia/1
  # DELETE /diezmodia/1.json
  def destroy
    @diezmodium.destroy
    respond_to do |format|
      format.html { redirect_to diezmodia_url, notice: 'Diezmodium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezmodium
      @diezmodium = Diezmodium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezmodium_params
      params.require(:diezmodium).permit(:valor, :dia)
    end
end
