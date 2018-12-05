class AssessmentsController < ApplicationController
  before_action :set_assessment, only: [:show, :edit, :update, :destroy]

  load_and_authorize_resource
  
  # GET /assessments
  # GET /assessments.json
  def index
    @assessments = Assessment.order(:number_assesment).page (params[:page])
    
  end

  # GET /assessments/1
  # GET /assessments/1.json
  def show
    @property = Property.where(assessment_id: @assessment.id)
    @client = Client.where(client_id: @assessment.client_id)
    @propertyrol = PropertyRol.where(property_id: [@property.ids])
    @property_between = PropertyBetweenFloorSlap.where(property_id: [@property.ids])
    @closet = PropertyCloset.where(property_id: [@property.ids])
    @covers = PropertyCover.where(property_id: [@property.ids])
    @doors = PropertyDoor.where(property_id: [@property.ids])
    respond_to do |format|
      format.html
      format.json
      format.pdf do
        render template: 'assessments/report', pdf:"Reporte-Tasacion-#{@assessment.number_assesment}",
        layout: 'layouts/pdf.html.erb',
        header: {
          right: "#{Date.today.to_s}"
        },
        footer: {
          center: "Hecho por 'CRAF solutions'"
        },
        viewport_size: '1280x1024',
        page_size: 'A4'
      end
    end
  end

  # GET /assessments/new
  def new
    @assessment = Assessment.new
    @assessment.properties.build
  end

  # GET /assessments/1/edit
  def edit
  end

  # POST /assessments
  # POST /assessments.json
  def create

    @assessment = Assessment.new(assessment_params)
    respond_to do |format|
      if @assessment.save
        format.html { redirect_to @assessment, notice: 'YASASSSS.' }
        format.json { render :show, status: :created, location: @assessment }
      else
        format.html { render :new }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assessments/1
  # PATCH/PUT /assessments/1.json
  def update
    respond_to do |format|
      if @assessment.update(assessment_params)
        format.html { redirect_to @assessment, notice: 'Assessment was successfully updated.' }
        format.json { render :show, status: :ok, location: @assessment }
      else
        format.html { render :edit }
        format.json { render json: @assessment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assessments/1
  # DELETE /assessments/1.json
  def destroy
    @assessment.destroy
    respond_to do |format|
      format.html { redirect_to assessments_url, notice: 'Assessment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assessment
      @assessment = Assessment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assessment_params
      params.require(:assessment).permit(:number_assesment, :state_id, :location, :inhabited, :habitant, :client_id, :owner_id, :start_date, 
        :end_date, properties_attributes:[:id, :debt_taxation, :antiquity, :expropriation, :sill, :facilities, :name])
    end
end
