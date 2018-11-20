class PropertySidewalksController < ApplicationController
  before_action :set_property_sidewalk, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_sidewalks
  # GET /property_sidewalks.json
  def index
    @property_sidewalks = PropertySidewalk.all
  end

  # GET /property_sidewalks/1
  # GET /property_sidewalks/1.json
  def show
  end

  # GET /property_sidewalks/new
  def new
    @property_sidewalk = PropertySidewalk.new
  end

  # GET /property_sidewalks/1/edit
  def edit
  end

  # POST /property_sidewalks
  # POST /property_sidewalks.json
  def create
    @property_sidewalk = PropertySidewalk.new(property_sidewalk_params)

    respond_to do |format|
      if @property_sidewalk.save
        format.html { redirect_to @property_sidewalk, notice: 'Property sidewalk was successfully created.' }
        format.json { render :show, status: :created, location: @property_sidewalk }
      else
        format.html { render :new }
        format.json { render json: @property_sidewalk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_sidewalks/1
  # PATCH/PUT /property_sidewalks/1.json
  def update
    respond_to do |format|
      if @property_sidewalk.update(property_sidewalk_params)
        format.html { redirect_to @property_sidewalk, notice: 'Property sidewalk was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_sidewalk }
      else
        format.html { render :edit }
        format.json { render json: @property_sidewalk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_sidewalks/1
  # DELETE /property_sidewalks/1.json
  def destroy
    @property_sidewalk.destroy
    respond_to do |format|
      format.html { redirect_to property_sidewalks_url, notice: 'Property sidewalk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_sidewalk
      @property_sidewalk = PropertySidewalk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sidewalk_params
      params.require(:property_sidewalk).permit(:side_walk_id, :property_id, :width)
    end
end
