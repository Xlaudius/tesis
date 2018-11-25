class PropertyCoversController < ApplicationController
  before_action :set_property_cover, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_covers
  # GET /property_covers.json
  def index
    @property_covers = PropertyCover.all
  end

  # GET /property_covers/1
  # GET /property_covers/1.json
  def show
  end

  # GET /property_covers/new
  def new
    @property_cover = PropertyCover.new
  end

  # GET /property_covers/1/edit
  def edit
  end

  # POST /property_covers
  # POST /property_covers.json
  def create
    @property_cover = PropertyCover.new(property_cover_params)

    respond_to do |format|
      if @property_cover.save
        format.html { redirect_to @property_cover, notice: 'Property cover was successfully created.' }
        format.json { render :show, status: :created, location: @property_cover }
      else
        format.html { render :new }
        format.json { render json: @property_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_covers/1
  # PATCH/PUT /property_covers/1.json
  def update
    respond_to do |format|
      if @property_cover.update(property_cover_params)
        format.html { redirect_to @property_cover, notice: 'Property cover was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_cover }
      else
        format.html { render :edit }
        format.json { render json: @property_cover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_covers/1
  # DELETE /property_covers/1.json
  def destroy
    @property_cover.destroy
    respond_to do |format|
      format.html { redirect_to property_covers_url, notice: 'Property cover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_cover
      @property_cover = PropertyCover.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_cover_params
      params.require(:property_cover).permit(:observations, :property_id, :cover_id, :quality_id)
    end
end
