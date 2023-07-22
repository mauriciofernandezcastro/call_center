class ControlAccesosController < ApplicationController
  before_action :set_control_acceso, only: %i[ show edit update destroy ]

  # GET /control_accesos or /control_accesos.json
  def index
    @control_accesos = ControlAcceso.all
  end

  # GET /control_accesos/1 or /control_accesos/1.json
  def show
  end

  # GET /control_accesos/new
  def new
    @control_acceso = ControlAcceso.new
  end

  # GET /control_accesos/1/edit
  def edit
  end

  # POST /control_accesos or /control_accesos.json
  def create
    @control_acceso = ControlAcceso.new(control_acceso_params)

    respond_to do |format|
      if @control_acceso.save
        format.html { redirect_to control_acceso_url(@control_acceso), notice: "Control acceso was successfully created." }
        format.json { render :show, status: :created, location: @control_acceso }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @control_acceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control_accesos/1 or /control_accesos/1.json
  def update
    respond_to do |format|
      if @control_acceso.update(control_acceso_params)
        format.html { redirect_to control_acceso_url(@control_acceso), notice: "Control acceso was successfully updated." }
        format.json { render :show, status: :ok, location: @control_acceso }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @control_acceso.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control_accesos/1 or /control_accesos/1.json
  def destroy
    @control_acceso.destroy

    respond_to do |format|
      format.html { redirect_to control_accesos_url, notice: "Control acceso was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control_acceso
      @control_acceso = ControlAcceso.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def control_acceso_params
      params.require(:control_acceso).permit(:name, :password)
    end
end
