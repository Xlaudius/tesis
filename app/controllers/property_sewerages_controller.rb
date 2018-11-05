class PropertySeweragesController < ApplicationController
  before_action :set_property_sewerage, only: [:show, :edit, :update, :destroy]

  # GET /property_sewerages
  # GET /property_sewerages.json
  def index
    @property_sewerages = PropertySewerage.all
  end

  # GET /property_sewerages/1
  # GET /property_sewerages/1.json
  def show
  end

  # GET /property_sewerages/new
  def new
    @property_sewerage = PropertySewerage.new
  end

  # GET /property_sewerages/1/edit
  def edit
  end

  # POST /property_sewerages
  # POST /property_sewerages.json
  def create
    @property_sewerage = PropertySewerage.new(property_sewerage_params)

    respond_to do |format|
      if @property_sewerage.save
        format.html { redirect_to @property_sewerage, notice: 'Property sewerage was successfully created.' }
        format.json { render :show, status: :created, location: @property_sewerage }
      else
        format.html { render :new }
        format.json { render json: @property_sewerage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_sewerages/1
  # PATCH/PUT /property_sewerages/1.json
  def update
    respond_to do |format|
      if @property_sewerage.update(property_sewerage_params)
        format.html { redirect_to @property_sewerage, notice: 'Property sewerage was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_sewerage }
      else
        format.html { render :edit }
        format.json { render json: @property_sewerage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_sewerages/1
  # DELETE /property_sewerages/1.json
  def destroy
    @property_sewerage.destroy
    respond_to do |format|
      format.html { redirect_to property_sewerages_url, notice: 'Property sewerage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_sewerage
      @property_sewerage = PropertySewerage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_sewerage_params
      params.require(:property_sewerage).permit(:sewerage_id, :property_id)
    end
end
