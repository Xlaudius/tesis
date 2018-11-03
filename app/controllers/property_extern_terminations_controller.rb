class PropertyExternTerminationsController < ApplicationController
  before_action :set_property_extern_termination, only: [:show, :edit, :update, :destroy]

  # GET /property_extern_terminations
  # GET /property_extern_terminations.json
  def index
    @property_extern_terminations = PropertyExternTermination.all
  end

  # GET /property_extern_terminations/1
  # GET /property_extern_terminations/1.json
  def show
  end

  # GET /property_extern_terminations/new
  def new
    @property_extern_termination = PropertyExternTermination.new
  end

  # GET /property_extern_terminations/1/edit
  def edit
  end

  # POST /property_extern_terminations
  # POST /property_extern_terminations.json
  def create
    @property_extern_termination = PropertyExternTermination.new(property_extern_termination_params)

    respond_to do |format|
      if @property_extern_termination.save
        format.html { redirect_to @property_extern_termination, notice: 'Property extern termination was successfully created.' }
        format.json { render :show, status: :created, location: @property_extern_termination }
      else
        format.html { render :new }
        format.json { render json: @property_extern_termination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_extern_terminations/1
  # PATCH/PUT /property_extern_terminations/1.json
  def update
    respond_to do |format|
      if @property_extern_termination.update(property_extern_termination_params)
        format.html { redirect_to @property_extern_termination, notice: 'Property extern termination was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_extern_termination }
      else
        format.html { render :edit }
        format.json { render json: @property_extern_termination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_extern_terminations/1
  # DELETE /property_extern_terminations/1.json
  def destroy
    @property_extern_termination.destroy
    respond_to do |format|
      format.html { redirect_to property_extern_terminations_url, notice: 'Property extern termination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_extern_termination
      @property_extern_termination = PropertyExternTermination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_extern_termination_params
      params.require(:property_extern_termination).permit(:property_id, :external_termination_id)
    end
end
