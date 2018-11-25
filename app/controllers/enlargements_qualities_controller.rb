class EnlargementsQualitiesController < ApplicationController
  before_action :set_enlargements_quality, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /enlargements_qualities
  # GET /enlargements_qualities.json
  def index
    @enlargements_qualities = EnlargementsQuality.all
  end

  # GET /enlargements_qualities/1
  # GET /enlargements_qualities/1.json
  def show
  end

  # GET /enlargements_qualities/new
  def new
    @enlargements_quality = EnlargementsQuality.new
  end

  # GET /enlargements_qualities/1/edit
  def edit
  end

  # POST /enlargements_qualities
  # POST /enlargements_qualities.json
  def create
    @enlargements_quality = EnlargementsQuality.new(enlargements_quality_params)

    respond_to do |format|
      if @enlargements_quality.save
        format.html { redirect_to @enlargements_quality, notice: 'Enlargements quality was successfully created.' }
        format.json { render :show, status: :created, location: @enlargements_quality }
      else
        format.html { render :new }
        format.json { render json: @enlargements_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enlargements_qualities/1
  # PATCH/PUT /enlargements_qualities/1.json
  def update
    respond_to do |format|
      if @enlargements_quality.update(enlargements_quality_params)
        format.html { redirect_to @enlargements_quality, notice: 'Enlargements quality was successfully updated.' }
        format.json { render :show, status: :ok, location: @enlargements_quality }
      else
        format.html { render :edit }
        format.json { render json: @enlargements_quality.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enlargements_qualities/1
  # DELETE /enlargements_qualities/1.json
  def destroy
    @enlargements_quality.destroy
    respond_to do |format|
      format.html { redirect_to enlargements_qualities_url, notice: 'Enlargements quality was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enlargements_quality
      @enlargements_quality = EnlargementsQuality.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enlargements_quality_params
      params.require(:enlargements_quality).permit(:name, :value)
    end
end
