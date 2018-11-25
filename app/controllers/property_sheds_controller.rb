class PropertyShedsController < ApplicationController
  before_action :set_property_shed, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_sheds
  # GET /property_sheds.json
  def index
    @property_sheds = PropertyShed.all
  end

  # GET /property_sheds/1
  # GET /property_sheds/1.json
  def show
  end

  # GET /property_sheds/new
  def new
    @property_shed = PropertyShed.new
  end

  # GET /property_sheds/1/edit
  def edit
  end

  # POST /property_sheds
  # POST /property_sheds.json
  def create
    @property_shed = PropertyShed.new(property_shed_params)

    respond_to do |format|
      if @property_shed.save
        format.html { redirect_to @property_shed, notice: 'Property shed was successfully created.' }
        format.json { render :show, status: :created, location: @property_shed }
      else
        format.html { render :new }
        format.json { render json: @property_shed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_sheds/1
  # PATCH/PUT /property_sheds/1.json
  def update
    respond_to do |format|
      if @property_shed.update(property_shed_params)
        format.html { redirect_to @property_shed, notice: 'Property shed was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_shed }
      else
        format.html { render :edit }
        format.json { render json: @property_shed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_sheds/1
  # DELETE /property_sheds/1.json
  def destroy
    @property_shed.destroy
    respond_to do |format|
      format.html { redirect_to property_sheds_url, notice: 'Property shed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_shed
      @property_shed = PropertyShed.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_shed_params
      params.require(:property_shed).permit(:shed_id, :property_id, :shed_material_id, :quality_id)
    end
end
