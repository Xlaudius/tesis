class PropertyRolsController < ApplicationController
  before_action :set_property_rol, only: [:show, :edit, :update, :destroy]

  # GET /property_rols
  # GET /property_rols.json
  def index
    @property_rols = PropertyRol.all
  end

  # GET /property_rols/1
  # GET /property_rols/1.json
  def show
  end

  # GET /property_rols/new
  def new
    @property_rol = PropertyRol.new
  end

  # GET /property_rols/1/edit
  def edit
  end

  # POST /property_rols
  # POST /property_rols.json
  def create
    @property_rol = PropertyRol.new(property_rol_params)

    respond_to do |format|
      if @property_rol.save
        format.html { redirect_to @property_rol, notice: 'Property rol was successfully created.' }
        format.json { render :show, status: :created, location: @property_rol }
      else
        format.html { render :new }
        format.json { render json: @property_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_rols/1
  # PATCH/PUT /property_rols/1.json
  def update
    respond_to do |format|
      if @property_rol.update(property_rol_params)
        format.html { redirect_to @property_rol, notice: 'Property rol was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_rol }
      else
        format.html { render :edit }
        format.json { render json: @property_rol.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_rols/1
  # DELETE /property_rols/1.json
  def destroy
    @property_rol.destroy
    respond_to do |format|
      format.html { redirect_to property_rols_url, notice: 'Property rol was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_rol
      @property_rol = PropertyRol.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_rol_params
      params.require(:property_rol).permit(:block, :predial, :province_id, :property_id)
    end
end
