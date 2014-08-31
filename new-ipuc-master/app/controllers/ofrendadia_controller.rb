class OfrendadiaController < ApplicationController
  before_action :set_ofrendadium, only: [:show, :edit, :update, :destroy]

  # GET /ofrendadia
  # GET /ofrendadia.json
  def index
    @ofrendadia = Ofrendadium.search(params[:search], params[:page])
  end

  # GET /ofrendadia/1
  # GET /ofrendadia/1.json
  def show
  end

  # GET /ofrendadia/new
  def new
    @ofrendadium = Ofrendadium.new
  end

  # GET /ofrendadia/1/edit
  def edit
  end

  # POST /ofrendadia
  # POST /ofrendadia.json
  def create
    @ofrendadium = Ofrendadium.new(ofrendadium_params)

    respond_to do |format|
      if @ofrendadium.save
        format.html { redirect_to @ofrendadium, notice: 'Ofrendadium was successfully created.' }
        format.json { render :show, status: :created, location: @ofrendadium }
      else
        format.html { render :new }
        format.json { render json: @ofrendadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofrendadia/1
  # PATCH/PUT /ofrendadia/1.json
  def update
    respond_to do |format|
      if @ofrendadium.update(ofrendadium_params)
        format.html { redirect_to @ofrendadium, notice: 'Ofrendadium was successfully updated.' }
        format.json { render :show, status: :ok, location: @ofrendadium }
      else
        format.html { render :edit }
        format.json { render json: @ofrendadium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofrendadia/1
  # DELETE /ofrendadia/1.json
  def destroy
    @ofrendadium.destroy
    respond_to do |format|
      format.html { redirect_to ofrendadia_url, notice: 'Ofrendadium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrendadium
      @ofrendadium = Ofrendadium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrendadium_params
      params.require(:ofrendadium).permit(:valor, :dia)
    end
end
