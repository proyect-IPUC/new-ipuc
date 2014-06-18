class PTrabajosController < ApplicationController
  before_action :set_p_trabajo, only: [:show, :edit, :update, :destroy]

  # GET /p_trabajos
  # GET /p_trabajos.json
  def index
    @p_trabajos = PTrabajo.all
  end

  # GET /p_trabajos/1
  # GET /p_trabajos/1.json
  def show
  end

  # GET /p_trabajos/new
  def new
    @p_trabajo = PTrabajo.new
  end

  # GET /p_trabajos/1/edit
  def edit
  end

  # POST /p_trabajos
  # POST /p_trabajos.json
  def create
    @p_trabajo = PTrabajo.new(p_trabajo_params)

    respond_to do |format|
      if @p_trabajo.save
        format.html { redirect_to @p_trabajo, notice: 'P trabajo was successfully created.' }
        format.json { render :show, status: :created, location: @p_trabajo }
      else
        format.html { render :new }
        format.json { render json: @p_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /p_trabajos/1
  # PATCH/PUT /p_trabajos/1.json
  def update
    respond_to do |format|
      if @p_trabajo.update(p_trabajo_params)
        format.html { redirect_to @p_trabajo, notice: 'P trabajo was successfully updated.' }
        format.json { render :show, status: :ok, location: @p_trabajo }
      else
        format.html { render :edit }
        format.json { render json: @p_trabajo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /p_trabajos/1
  # DELETE /p_trabajos/1.json
  def destroy
    @p_trabajo.destroy
    respond_to do |format|
      format.html { redirect_to p_trabajos_url, notice: 'P trabajo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_p_trabajo
      @p_trabajo = PTrabajo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def p_trabajo_params
      params.require(:p_trabajo).permit(:NombrePlanTrabajo, :fechaPlanTrabajo, :DescripcionPlan, :Aprobada?, :Observacion)
    end
end
