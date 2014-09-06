class DiezmoanualsController < ApplicationController
  before_action :set_diezmoanual, only: [:show, :edit, :update, :destroy]

  # GET /diezmoanuals
  # GET /diezmoanuals.json
  def index
    @diezmoanuals = Diezmoanual.all
  end

  # GET /diezmoanuals/1
  # GET /diezmoanuals/1.json
  def show
  end

  # GET /diezmoanuals/new
  def new
    @diezmoanual = Diezmoanual.new
  end

  # GET /diezmoanuals/1/edit
  def edit
  end

  # POST /diezmoanuals
  # POST /diezmoanuals.json
  def create
    @diezmoanual = Diezmoanual.new(diezmoanual_params)

    respond_to do |format|
      if @diezmoanual.save
        format.html { redirect_to @diezmoanual, notice: 'Diezmoanual was successfully created.' }
        format.json { render :show, status: :created, location: @diezmoanual }
      else
        format.html { render :new }
        format.json { render json: @diezmoanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diezmoanuals/1
  # PATCH/PUT /diezmoanuals/1.json
  def update
    respond_to do |format|
      if @diezmoanual.update(diezmoanual_params)
        format.html { redirect_to @diezmoanual, notice: 'Diezmoanual was successfully updated.' }
        format.json { render :show, status: :ok, location: @diezmoanual }
      else
        format.html { render :edit }
        format.json { render json: @diezmoanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diezmoanuals/1
  # DELETE /diezmoanuals/1.json
  def destroy
    @diezmoanual.destroy
    respond_to do |format|
      format.html { redirect_to diezmoanuals_url, notice: 'Diezmoanual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezmoanual
      @diezmoanual = Diezmoanual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezmoanual_params
      params.require(:diezmoanual).permit(:valor, :año)
    end
end
