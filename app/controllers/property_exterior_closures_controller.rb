class PropertyExteriorClosuresController < ApplicationController
  before_action :set_property_exterior_closure, only: [:show, :edit, :update, :destroy]

  # GET /property_exterior_closures
  # GET /property_exterior_closures.json
  def index
    @property_exterior_closures = PropertyExteriorClosure.all
  end

  # GET /property_exterior_closures/1
  # GET /property_exterior_closures/1.json
  def show
  end

  # GET /property_exterior_closures/new
  def new
    @property_exterior_closure = PropertyExteriorClosure.new
  end

  # GET /property_exterior_closures/1/edit
  def edit
  end

  # POST /property_exterior_closures
  # POST /property_exterior_closures.json
  def create
    @property_exterior_closure = PropertyExteriorClosure.new(property_exterior_closure_params)

    respond_to do |format|
      if @property_exterior_closure.save
        format.html { redirect_to @property_exterior_closure, notice: 'Property exterior closure was successfully created.' }
        format.json { render :show, status: :created, location: @property_exterior_closure }
      else
        format.html { render :new }
        format.json { render json: @property_exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_exterior_closures/1
  # PATCH/PUT /property_exterior_closures/1.json
  def update
    respond_to do |format|
      if @property_exterior_closure.update(property_exterior_closure_params)
        format.html { redirect_to @property_exterior_closure, notice: 'Property exterior closure was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_exterior_closure }
      else
        format.html { render :edit }
        format.json { render json: @property_exterior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_exterior_closures/1
  # DELETE /property_exterior_closures/1.json
  def destroy
    @property_exterior_closure.destroy
    respond_to do |format|
      format.html { redirect_to property_exterior_closures_url, notice: 'Property exterior closure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_exterior_closure
      @property_exterior_closure = PropertyExteriorClosure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_exterior_closure_params
      params.require(:property_exterior_closure).permit(:other, :property_id, :exterior_closure_id)
    end
end
