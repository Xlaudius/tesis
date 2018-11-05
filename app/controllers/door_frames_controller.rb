class DoorFramesController < ApplicationController
  before_action :set_door_frame, only: [:show, :edit, :update, :destroy]

  # GET /door_frames
  # GET /door_frames.json
  def index
    @door_frames = DoorFrame.all
  end

  # GET /door_frames/1
  # GET /door_frames/1.json
  def show
  end

  # GET /door_frames/new
  def new
    @door_frame = DoorFrame.new
  end

  # GET /door_frames/1/edit
  def edit
  end

  # POST /door_frames
  # POST /door_frames.json
  def create
    @door_frame = DoorFrame.new(door_frame_params)

    respond_to do |format|
      if @door_frame.save
        format.html { redirect_to @door_frame, notice: 'Door frame was successfully created.' }
        format.json { render :show, status: :created, location: @door_frame }
      else
        format.html { render :new }
        format.json { render json: @door_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /door_frames/1
  # PATCH/PUT /door_frames/1.json
  def update
    respond_to do |format|
      if @door_frame.update(door_frame_params)
        format.html { redirect_to @door_frame, notice: 'Door frame was successfully updated.' }
        format.json { render :show, status: :ok, location: @door_frame }
      else
        format.html { render :edit }
        format.json { render json: @door_frame.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /door_frames/1
  # DELETE /door_frames/1.json
  def destroy
    @door_frame.destroy
    respond_to do |format|
      format.html { redirect_to door_frames_url, notice: 'Door frame was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_door_frame
      @door_frame = DoorFrame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def door_frame_params
      params.require(:door_frame).permit(:name, :value)
    end
end
