class DiezdiaController < ApplicationController
  before_action :set_diezdium, only: [:show, :edit, :update, :destroy]

  # GET /diezdia
  # GET /diezdia.json
  def index
    @diezdia = Diezdium.all
  end

  # GET /diezdia/1
  # GET /diezdia/1.json
  def show
  end

  # GET /diezdia/new
  def new
    @diezdium = Diezdium.new
  end

  # GET /diezdia/1/edit
  def edit
  end

  # POST /diezdia
  # POST /diezdia.json
  def create
    @diezdium = Diezdium.new(diezdium_params)

    respond_to do |format|
      if @diezdium.save
        format.html { redirect_to @diezdium, notice: 'Diezdium was successfully created.' }
        format.json { render :show, status: :created, location: @diezdium }
      else
        format.html { render :new }
        format.json { render json: @diezdium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diezdia/1
  # PATCH/PUT /diezdia/1.json
  def update
    respond_to do |format|
      if @diezdium.update(diezdium_params)
        format.html { redirect_to @diezdium, notice: 'Diezdium was successfully updated.' }
        format.json { render :show, status: :ok, location: @diezdium }
      else
        format.html { render :edit }
        format.json { render json: @diezdium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diezdia/1
  # DELETE /diezdia/1.json
  def destroy
    @diezdium.destroy
    respond_to do |format|
      format.html { redirect_to diezdia_url, notice: 'Diezdium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezdium
      @diezdium = Diezdium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezdium_params
      params.require(:diezdium).permit(:valor, :dia)
    end
end
