class OfrendatrisController < ApplicationController
  before_action :set_ofrendatri, only: [:show, :edit, :update, :destroy]

  # GET /ofrendatris
  # GET /ofrendatris.json
  def index
    @ofrendatris = Ofrendatri.search(params[:search], params[:page])
  end

  # GET /ofrendatris/1
  # GET /ofrendatris/1.json
  def show
  end

  # GET /ofrendatris/new
  def new
    @ofrendatri = Ofrendatri.new
  end

  # GET /ofrendatris/1/edit
  def edit
  end

  # POST /ofrendatris
  # POST /ofrendatris.json
  def create
    @ofrendatri = Ofrendatri.new(ofrendatri_params)

    respond_to do |format|
      if @ofrendatri.save
        format.html { redirect_to @ofrendatri, notice: 'Ofrendatri was successfully created.' }
        format.json { render :show, status: :created, location: @ofrendatri }
      else
        format.html { render :new }
        format.json { render json: @ofrendatri.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofrendatris/1
  # PATCH/PUT /ofrendatris/1.json
  def update
    respond_to do |format|
      if @ofrendatri.update(ofrendatri_params)
        format.html { redirect_to @ofrendatri, notice: 'Ofrendatri was successfully updated.' }
        format.json { render :show, status: :ok, location: @ofrendatri }
      else
        format.html { render :edit }
        format.json { render json: @ofrendatri.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofrendatris/1
  # DELETE /ofrendatris/1.json
  def destroy
    @ofrendatri.destroy
    respond_to do |format|
      format.html { redirect_to ofrendatris_url, notice: 'Ofrendatri was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrendatri
      @ofrendatri = Ofrendatri.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrendatri_params
      params.require(:ofrendatri).permit(:valor, :dia)
    end
end
