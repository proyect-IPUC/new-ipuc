class PagaeventosController < ApplicationController
  before_action :set_pagaevento, only: [:show, :edit, :update, :destroy]

  # GET /pagaeventos
  # GET /pagaeventos.json
  def index
    @pagaeventos = Pagaevento.search(params[:search], params[:page])
  end

  # GET /pagaeventos/1
  # GET /pagaeventos/1.json
  def show
  end

  # GET /pagaeventos/new
  def new
    @pagaevento = Pagaevento.new
  end

  # GET /pagaeventos/1/edit
  def edit
  end

  # POST /pagaeventos
  # POST /pagaeventos.json
  def create
    @pagaevento = Pagaevento.new(pagaevento_params)

    respond_to do |format|
      if @pagaevento.save
        format.html { redirect_to @pagaevento, notice: 'Pagaevento was successfully created.' }
        format.json { render :show, status: :created, location: @pagaevento }
      else
        format.html { render :new }
        format.json { render json: @pagaevento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pagaeventos/1
  # PATCH/PUT /pagaeventos/1.json
  def update
    respond_to do |format|
      if @pagaevento.update(pagaevento_params)
        format.html { redirect_to @pagaevento, notice: 'Pagaevento was successfully updated.' }
        format.json { render :show, status: :ok, location: @pagaevento }
      else
        format.html { render :edit }
        format.json { render json: @pagaevento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pagaeventos/1
  # DELETE /pagaeventos/1.json
  def destroy
    @pagaevento.destroy
    respond_to do |format|
      format.html { redirect_to pagaeventos_url, notice: 'Pagaevento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pagaevento
      @pagaevento = Pagaevento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pagaevento_params
      params.require(:pagaevento).permit(:evento, :valor, :dia)
    end
end
