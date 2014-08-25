class OfrendanualsController < ApplicationController
  before_action :set_ofrendanual, only: [:show, :edit, :update, :destroy]

  # GET /ofrendanuals
  # GET /ofrendanuals.json
  def index
    @ofrendanuals = Ofrendanual.all
  end

  # GET /ofrendanuals/1
  # GET /ofrendanuals/1.json
  def show
  end

  # GET /ofrendanuals/new
  def new
    @ofrendanual = Ofrendanual.new
  end

  # GET /ofrendanuals/1/edit
  def edit
  end

  # POST /ofrendanuals
  # POST /ofrendanuals.json
  def create
    @ofrendanual = Ofrendanual.new(ofrendanual_params)

    respond_to do |format|
      if @ofrendanual.save
        format.html { redirect_to @ofrendanual, notice: 'Ofrendanual was successfully created.' }
        format.json { render :show, status: :created, location: @ofrendanual }
      else
        format.html { render :new }
        format.json { render json: @ofrendanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofrendanuals/1
  # PATCH/PUT /ofrendanuals/1.json
  def update
    respond_to do |format|
      if @ofrendanual.update(ofrendanual_params)
        format.html { redirect_to @ofrendanual, notice: 'Ofrendanual was successfully updated.' }
        format.json { render :show, status: :ok, location: @ofrendanual }
      else
        format.html { render :edit }
        format.json { render json: @ofrendanual.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofrendanuals/1
  # DELETE /ofrendanuals/1.json
  def destroy
    @ofrendanual.destroy
    respond_to do |format|
      format.html { redirect_to ofrendanuals_url, notice: 'Ofrendanual was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrendanual
      @ofrendanual = Ofrendanual.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrendanual_params
      params.require(:ofrendanual).permit(:valor, :dia)
    end
end
