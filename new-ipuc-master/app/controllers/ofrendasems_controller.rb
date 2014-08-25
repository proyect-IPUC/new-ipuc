class OfrendasemsController < ApplicationController
  before_action :set_ofrendasem, only: [:show, :edit, :update, :destroy]

  # GET /ofrendasems
  # GET /ofrendasems.json
  def index
    @ofrendasems = Ofrendasem.all
  end

  # GET /ofrendasems/1
  # GET /ofrendasems/1.json
  def show
  end

  # GET /ofrendasems/new
  def new
    @ofrendasem = Ofrendasem.new
  end

  # GET /ofrendasems/1/edit
  def edit
  end

  # POST /ofrendasems
  # POST /ofrendasems.json
  def create
    @ofrendasem = Ofrendasem.new(ofrendasem_params)

    respond_to do |format|
      if @ofrendasem.save
        format.html { redirect_to @ofrendasem, notice: 'Ofrendasem was successfully created.' }
        format.json { render :show, status: :created, location: @ofrendasem }
      else
        format.html { render :new }
        format.json { render json: @ofrendasem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ofrendasems/1
  # PATCH/PUT /ofrendasems/1.json
  def update
    respond_to do |format|
      if @ofrendasem.update(ofrendasem_params)
        format.html { redirect_to @ofrendasem, notice: 'Ofrendasem was successfully updated.' }
        format.json { render :show, status: :ok, location: @ofrendasem }
      else
        format.html { render :edit }
        format.json { render json: @ofrendasem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ofrendasems/1
  # DELETE /ofrendasems/1.json
  def destroy
    @ofrendasem.destroy
    respond_to do |format|
      format.html { redirect_to ofrendasems_url, notice: 'Ofrendasem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ofrendasem
      @ofrendasem = Ofrendasem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ofrendasem_params
      params.require(:ofrendasem).permit(:valor, :dia)
    end
end
