class ForcesController < ApplicationController
  before_action :set_force, only: %i[show edit update destroy]

  # GET /forces or /forces.json
  def index
    @forces = Force.all.order(:name)
  end

  # GET /forces/1 or /forces/1.json
  def show
  end

  # GET /forces/new
  def new
    @force = Force.new
  end

  # GET /forces/1/edit
  def edit
  end

  # POST /forces or /forces.json
  def create
    @force = Force.new(force_params)

    respond_to do |format|
      if @force.save
        format.html { redirect_to force_url(@force), notice: "Force was successfully created." }
        format.json { render :show, status: :created, location: @force }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @force.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forces/1 or /forces/1.json
  def update
    respond_to do |format|
      if @force.update(force_params)
        format.html { redirect_to force_url(@force), notice: "Force was successfully updated." }
        format.json { render :show, status: :ok, location: @force }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @force.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forces/1 or /forces/1.json
  def destroy
    @force.destroy

    respond_to do |format|
      format.html { redirect_to forces_url, notice: "Force was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_force
    @force = Force.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def force_params
    params.require(:force).permit(:name, :description)
  end
end
