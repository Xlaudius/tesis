class PropertyStructuresController < ApplicationController
  before_action :set_property_structure, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_structures
  # GET /property_structures.json
  def index
    @property_structures = PropertyStructure.all
  end

  # GET /property_structures/1
  # GET /property_structures/1.json
  def show
  end

  # GET /property_structures/new
  def new
    @property_structure = PropertyStructure.new
  end

  # GET /property_structures/1/edit
  def edit
  end

  # POST /property_structures
  # POST /property_structures.json
  def create
    @property_structure = PropertyStructure.new(property_structure_params)

    respond_to do |format|
      if @property_structure.save
        format.html { redirect_to @property_structure, notice: 'Property structure was successfully created.' }
        format.json { render :show, status: :created, location: @property_structure }
      else
        format.html { render :new }
        format.json { render json: @property_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_structures/1
  # PATCH/PUT /property_structures/1.json
  def update
    respond_to do |format|
      if @property_structure.update(property_structure_params)
        format.html { redirect_to @property_structure, notice: 'Property structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_structure }
      else
        format.html { render :edit }
        format.json { render json: @property_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_structures/1
  # DELETE /property_structures/1.json
  def destroy
    @property_structure.destroy
    respond_to do |format|
      format.html { redirect_to property_structures_url, notice: 'Property structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_structure
      @property_structure = PropertyStructure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_structure_params
      params.require(:property_structure).permit(:observations, :property_id, :structure_id, :quality_id)
    end
end
