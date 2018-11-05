class PropertyInteriorClosuresController < ApplicationController
  before_action :set_property_interior_closure, only: [:show, :edit, :update, :destroy]

  # GET /property_interior_closures
  # GET /property_interior_closures.json
  def index
    @property_interior_closures = PropertyInteriorClosure.all
  end

  # GET /property_interior_closures/1
  # GET /property_interior_closures/1.json
  def show
  end

  # GET /property_interior_closures/new
  def new
    @property_interior_closure = PropertyInteriorClosure.new
  end

  # GET /property_interior_closures/1/edit
  def edit
  end

  # POST /property_interior_closures
  # POST /property_interior_closures.json
  def create
    @property_interior_closure = PropertyInteriorClosure.new(property_interior_closure_params)

    respond_to do |format|
      if @property_interior_closure.save
        format.html { redirect_to @property_interior_closure, notice: 'Property interior closure was successfully created.' }
        format.json { render :show, status: :created, location: @property_interior_closure }
      else
        format.html { render :new }
        format.json { render json: @property_interior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_interior_closures/1
  # PATCH/PUT /property_interior_closures/1.json
  def update
    respond_to do |format|
      if @property_interior_closure.update(property_interior_closure_params)
        format.html { redirect_to @property_interior_closure, notice: 'Property interior closure was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_interior_closure }
      else
        format.html { render :edit }
        format.json { render json: @property_interior_closure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_interior_closures/1
  # DELETE /property_interior_closures/1.json
  def destroy
    @property_interior_closure.destroy
    respond_to do |format|
      format.html { redirect_to property_interior_closures_url, notice: 'Property interior closure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_interior_closure
      @property_interior_closure = PropertyInteriorClosure.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_interior_closure_params
      params.require(:property_interior_closure).permit(:other, :property_id, :interior_closure_id)
    end
end
