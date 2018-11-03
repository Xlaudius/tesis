class PropertyClosetsController < ApplicationController
  before_action :set_property_closet, only: [:show, :edit, :update, :destroy]

  # GET /property_closets
  # GET /property_closets.json
  def index
    @property_closets = PropertyCloset.all
  end

  # GET /property_closets/1
  # GET /property_closets/1.json
  def show
  end

  # GET /property_closets/new
  def new
    @property_closet = PropertyCloset.new
  end

  # GET /property_closets/1/edit
  def edit
  end

  # POST /property_closets
  # POST /property_closets.json
  def create
    @property_closet = PropertyCloset.new(property_closet_params)

    respond_to do |format|
      if @property_closet.save
        format.html { redirect_to @property_closet, notice: 'Property closet was successfully created.' }
        format.json { render :show, status: :created, location: @property_closet }
      else
        format.html { render :new }
        format.json { render json: @property_closet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_closets/1
  # PATCH/PUT /property_closets/1.json
  def update
    respond_to do |format|
      if @property_closet.update(property_closet_params)
        format.html { redirect_to @property_closet, notice: 'Property closet was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_closet }
      else
        format.html { render :edit }
        format.json { render json: @property_closet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_closets/1
  # DELETE /property_closets/1.json
  def destroy
    @property_closet.destroy
    respond_to do |format|
      format.html { redirect_to property_closets_url, notice: 'Property closet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_closet
      @property_closet = PropertyCloset.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_closet_params
      params.require(:property_closet).permit(:closet_id, :property_id, :qualities_id)
    end
end
