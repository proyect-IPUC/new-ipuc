class MembreciaController < ApplicationController
  before_action :set_membrecium, only: [:show, :edit, :update, :destroy]

  # GET /membrecia
  # GET /membrecia.json
  def index
    @membrecia = Membrecium.search(params[:search], params[:page])


  end

  # GET /membrecia/1
  # GET /membrecia/1.json
  def show
  end

  # GET /membrecia/new
  def new
    @membrecium = Membrecium.new
  end

  # GET /membrecia/1/edit
  def edit
  end

  # POST /membrecia
  # POST /membrecia.json
  def create
    @membrecium = Membrecium.new(membrecium_params)

    respond_to do |format|
      if @membrecium.save
        format.html { redirect_to @membrecium, notice: 'Membrecium was successfully created.' }
        format.json { render :show, status: :created, location: @membrecium }
      else
        format.html { render :new }
        format.json { render json: @membrecium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /membrecia/1
  # PATCH/PUT /membrecia/1.json
  def update
    respond_to do |format|
      if @membrecium.update(membrecium_params)
        format.html { redirect_to @membrecium, notice: 'Membrecium was successfully updated.' }
        format.json { render :show, status: :ok, location: @membrecium }
      else
        format.html { render :edit }
        format.json { render json: @membrecium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /membrecia/1
  # DELETE /membrecia/1.json
  def destroy
    @membrecium.destroy
    respond_to do |format|
      format.html { redirect_to membrecia_url, notice: 'Membrecium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_membrecium
      @membrecium = Membrecium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def membrecium_params
      params.require(:membrecium).permit(:nombre, :apellidos, :telefono, :direccion, :email, :recibioEspiritu, :fecha, :comentarios)
    end
end
