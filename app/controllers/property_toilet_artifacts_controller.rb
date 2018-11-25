class PropertyToiletArtifactsController < ApplicationController
  before_action :set_property_toilet_artifact, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_toilet_artifacts
  # GET /property_toilet_artifacts.json
  def index
    @property_toilet_artifacts = PropertyToiletArtifact.all
  end

  # GET /property_toilet_artifacts/1
  # GET /property_toilet_artifacts/1.json
  def show
  end

  # GET /property_toilet_artifacts/new
  def new
    @property_toilet_artifact = PropertyToiletArtifact.new
  end

  # GET /property_toilet_artifacts/1/edit
  def edit
  end

  # POST /property_toilet_artifacts
  # POST /property_toilet_artifacts.json
  def create
    @property_toilet_artifact = PropertyToiletArtifact.new(property_toilet_artifact_params)

    respond_to do |format|
      if @property_toilet_artifact.save
        format.html { redirect_to @property_toilet_artifact, notice: 'Property toilet artifact was successfully created.' }
        format.json { render :show, status: :created, location: @property_toilet_artifact }
      else
        format.html { render :new }
        format.json { render json: @property_toilet_artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_toilet_artifacts/1
  # PATCH/PUT /property_toilet_artifacts/1.json
  def update
    respond_to do |format|
      if @property_toilet_artifact.update(property_toilet_artifact_params)
        format.html { redirect_to @property_toilet_artifact, notice: 'Property toilet artifact was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_toilet_artifact }
      else
        format.html { render :edit }
        format.json { render json: @property_toilet_artifact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_toilet_artifacts/1
  # DELETE /property_toilet_artifacts/1.json
  def destroy
    @property_toilet_artifact.destroy
    respond_to do |format|
      format.html { redirect_to property_toilet_artifacts_url, notice: 'Property toilet artifact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_toilet_artifact
      @property_toilet_artifact = PropertyToiletArtifact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_toilet_artifact_params
      params.require(:property_toilet_artifact).permit(:property_id, :toilet_artifact_id, :quality_id)
    end
end
