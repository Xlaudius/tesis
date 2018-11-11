class PropertyBetweenFloorSlapsController < ApplicationController
  before_action :set_property_between_floor_slap, only: [:show, :edit, :update, :destroy]

  # GET /property_between_floor_slaps
  # GET /property_between_floor_slaps.json
  def index
    @property_between_floor_slaps = PropertyBetweenFloorSlap.all
  end

  # GET /property_between_floor_slaps/1
  # GET /property_between_floor_slaps/1.json
  def show
  end

  # GET /property_between_floor_slaps/new
  def new
    @property_between_floor_slap = PropertyBetweenFloorSlap.new
  end

  # GET /property_between_floor_slaps/1/edit
  def edit
  end

  # POST /property_between_floor_slaps
  # POST /property_between_floor_slaps.json
  def create
    @property_between_floor_slap = PropertyBetweenFloorSlap.new(property_between_floor_slap_params)

    respond_to do |format|
      if @property_between_floor_slap.save
        format.html { redirect_to @property_between_floor_slap, notice: 'Property between floor slap was successfully created.' }
        format.json { render :show, status: :created, location: @property_between_floor_slap }
      else
        format.html { render :new }
        format.json { render json: @property_between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_between_floor_slaps/1
  # PATCH/PUT /property_between_floor_slaps/1.json
  def update
    respond_to do |format|
      if @property_between_floor_slap.update(property_between_floor_slap_params)
        format.html { redirect_to @property_between_floor_slap, notice: 'Property between floor slap was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_between_floor_slap }
      else
        format.html { render :edit }
        format.json { render json: @property_between_floor_slap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_between_floor_slaps/1
  # DELETE /property_between_floor_slaps/1.json
  def destroy
    @property_between_floor_slap.destroy
    respond_to do |format|
      format.html { redirect_to property_between_floor_slaps_url, notice: 'Property between floor slap was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_between_floor_slap
      @property_between_floor_slap = PropertyBetweenFloorSlap.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_between_floor_slap_params
      params.require(:property_between_floor_slap).permit(:between_floor_slap_id, :property_id, :quality_id)
    end
end
