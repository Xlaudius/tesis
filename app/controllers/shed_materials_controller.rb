class ShedMaterialsController < ApplicationController
  before_action :set_shed_material, only: [:show, :edit, :update, :destroy]

  # GET /shed_materials
  # GET /shed_materials.json
  def index
    @shed_materials = ShedMaterial.all
  end

  # GET /shed_materials/1
  # GET /shed_materials/1.json
  def show
  end

  # GET /shed_materials/new
  def new
    @shed_material = ShedMaterial.new
  end

  # GET /shed_materials/1/edit
  def edit
  end

  # POST /shed_materials
  # POST /shed_materials.json
  def create
    @shed_material = ShedMaterial.new(shed_material_params)

    respond_to do |format|
      if @shed_material.save
        format.html { redirect_to @shed_material, notice: 'Shed material was successfully created.' }
        format.json { render :show, status: :created, location: @shed_material }
      else
        format.html { render :new }
        format.json { render json: @shed_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shed_materials/1
  # PATCH/PUT /shed_materials/1.json
  def update
    respond_to do |format|
      if @shed_material.update(shed_material_params)
        format.html { redirect_to @shed_material, notice: 'Shed material was successfully updated.' }
        format.json { render :show, status: :ok, location: @shed_material }
      else
        format.html { render :edit }
        format.json { render json: @shed_material.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shed_materials/1
  # DELETE /shed_materials/1.json
  def destroy
    @shed_material.destroy
    respond_to do |format|
      format.html { redirect_to shed_materials_url, notice: 'Shed material was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shed_material
      @shed_material = ShedMaterial.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shed_material_params
      params.require(:shed_material).permit(:name, :value)
    end
end
