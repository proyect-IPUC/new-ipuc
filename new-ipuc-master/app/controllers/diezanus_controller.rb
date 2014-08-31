class DiezanusController < ApplicationController
  before_action :set_diezanu, only: [:show, :edit, :update, :destroy]

  # GET /diezanus
  # GET /diezanus.json
  def index
    @diezanus = Diezanu.search(params[:search], params[:page])
  end

  # GET /diezanus/1
  # GET /diezanus/1.json
  def show
  end

  # GET /diezanus/new
  def new
    @diezanu = Diezanu.new
  end

  # GET /diezanus/1/edit
  def edit
  end

  # POST /diezanus
  # POST /diezanus.json
  def create
    @diezanu = Diezanu.new(diezanu_params)

    respond_to do |format|
      if @diezanu.save
        format.html { redirect_to @diezanu, notice: 'Diezanu was successfully created.' }
        format.json { render :show, status: :created, location: @diezanu }
      else
        format.html { render :new }
        format.json { render json: @diezanu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /diezanus/1
  # PATCH/PUT /diezanus/1.json
  def update
    respond_to do |format|
      if @diezanu.update(diezanu_params)
        format.html { redirect_to @diezanu, notice: 'Diezanu was successfully updated.' }
        format.json { render :show, status: :ok, location: @diezanu }
      else
        format.html { render :edit }
        format.json { render json: @diezanu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /diezanus/1
  # DELETE /diezanus/1.json
  def destroy
    @diezanu.destroy
    respond_to do |format|
      format.html { redirect_to diezanus_url, notice: 'Diezanu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_diezanu
      @diezanu = Diezanu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def diezanu_params
      params.require(:diezanu).permit(:valor, :dia)
    end
end
