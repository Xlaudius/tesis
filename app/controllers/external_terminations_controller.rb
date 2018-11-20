class ExternalTerminationsController < ApplicationController
  before_action :set_external_termination, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource
  
  # GET /external_terminations
  # GET /external_terminations.json
  def index
    @external_terminations = ExternalTermination.all
  end

  # GET /external_terminations/1
  # GET /external_terminations/1.json
  def show
  end

  # GET /external_terminations/new
  def new
    @external_termination = ExternalTermination.new
  end

  # GET /external_terminations/1/edit
  def edit
  end

  # POST /external_terminations
  # POST /external_terminations.json
  def create
    @external_termination = ExternalTermination.new(external_termination_params)

    respond_to do |format|
      if @external_termination.save
        format.html { redirect_to @external_termination, notice: 'External termination was successfully created.' }
        format.json { render :show, status: :created, location: @external_termination }
      else
        format.html { render :new }
        format.json { render json: @external_termination.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /external_terminations/1
  # PATCH/PUT /external_terminations/1.json
  def update
    respond_to do |format|
      if @external_termination.update(external_termination_params)
        format.html { redirect_to @external_termination, notice: 'External termination was successfully updated.' }
        format.json { render :show, status: :ok, location: @external_termination }
      else
        format.html { render :edit }
        format.json { render json: @external_termination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /external_terminations/1
  # DELETE /external_terminations/1.json
  def destroy
    @external_termination.destroy
    respond_to do |format|
      format.html { redirect_to external_terminations_url, notice: 'External termination was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_external_termination
      @external_termination = ExternalTermination.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def external_termination_params
      params.require(:external_termination).permit(:name, :value)
    end
end
