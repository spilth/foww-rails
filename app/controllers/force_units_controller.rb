class ForceUnitsController < ApplicationController
  before_action :set_force_unit, only: %i[show edit update destroy]

  # GET /force_units or /force_units.json
  def index
    @force_units = ForceUnit.all
  end

  # GET /force_units/1 or /force_units/1.json
  def show
  end

  # GET /force_units/new
  def new
    @force_unit = ForceUnit.new
  end

  # GET /force_units/1/edit
  def edit
  end

  # POST /force_units or /force_units.json
  def create
    @force_unit = ForceUnit.new(force_unit_params)

    respond_to do |format|
      if @force_unit.save
        format.html { redirect_to force_unit_url(@force_unit), notice: "Force unit was successfully created." }
        format.json { render :show, status: :created, location: @force_unit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @force_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /force_units/1 or /force_units/1.json
  def update
    respond_to do |format|
      if @force_unit.update(force_unit_params)
        format.html { redirect_to force_unit_url(@force_unit), notice: "Force unit was successfully updated." }
        format.json { render :show, status: :ok, location: @force_unit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @force_unit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /force_units/1 or /force_units/1.json
  def destroy
    @force_unit.destroy

    respond_to do |format|
      format.html { redirect_to force_units_url, notice: "Force unit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_force_unit
    @force_unit = ForceUnit.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def force_unit_params
    params.require(:force_unit).permit(:force_id, :unit_id, :cost)
  end
end
