class PropertyPavementsController < ApplicationController
  before_action :set_property_pavement, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /property_pavements
  # GET /property_pavements.json
  def index
    @property_pavements = PropertyPavement.all
  end

  # GET /property_pavements/1
  # GET /property_pavements/1.json
  def show
  end

  # GET /property_pavements/new
  def new
    @property_pavement = PropertyPavement.new
  end

  # GET /property_pavements/1/edit
  def edit
  end

  # POST /property_pavements
  # POST /property_pavements.json
  def create
    @property_pavement = PropertyPavement.new(property_pavement_params)

    respond_to do |format|
      if @property_pavement.save
        format.html { redirect_to @property_pavement, notice: 'Property pavement was successfully created.' }
        format.json { render :show, status: :created, location: @property_pavement }
      else
        format.html { render :new }
        format.json { render json: @property_pavement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_pavements/1
  # PATCH/PUT /property_pavements/1.json
  def update
    respond_to do |format|
      if @property_pavement.update(property_pavement_params)
        format.html { redirect_to @property_pavement, notice: 'Property pavement was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_pavement }
      else
        format.html { render :edit }
        format.json { render json: @property_pavement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_pavements/1
  # DELETE /property_pavements/1.json
  def destroy
    @property_pavement.destroy
    respond_to do |format|
      format.html { redirect_to property_pavements_url, notice: 'Property pavement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_pavement
      @property_pavement = PropertyPavement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_pavement_params
      params.require(:property_pavement).permit(:pavement_id, :property_id, :quality_id)
    end
end
