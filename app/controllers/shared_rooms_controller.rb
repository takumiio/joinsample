class SharedRoomsController < ApplicationController
  before_action :set_shared_room, only: [:show, :edit, :update, :destroy]

  # GET /shared_rooms
  # GET /shared_rooms.json
  def index
    @shared_rooms = SharedRoom.all
  end

  # GET /shared_rooms/1
  # GET /shared_rooms/1.json
  def show
  end

  # GET /shared_rooms/new
  def new
    @shared_room = SharedRoom.new
  end

  # GET /shared_rooms/1/edit
  def edit
  end

  # POST /shared_rooms
  # POST /shared_rooms.json
  def create
    @shared_room = SharedRoom.new(shared_room_params)

    respond_to do |format|
      if @shared_room.save
        format.html { redirect_to @shared_room, notice: 'Shared room was successfully created.' }
        format.json { render :show, status: :created, location: @shared_room }
      else
        format.html { render :new }
        format.json { render json: @shared_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shared_rooms/1
  # PATCH/PUT /shared_rooms/1.json
  def update
    respond_to do |format|
      if @shared_room.update(shared_room_params)
        format.html { redirect_to @shared_room, notice: 'Shared room was successfully updated.' }
        format.json { render :show, status: :ok, location: @shared_room }
      else
        format.html { render :edit }
        format.json { render json: @shared_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shared_rooms/1
  # DELETE /shared_rooms/1.json
  def destroy
    @shared_room.destroy
    respond_to do |format|
      format.html { redirect_to shared_rooms_url, notice: 'Shared room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shared_room
      @shared_room = SharedRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shared_room_params
      params.require(:shared_room).permit(:conference_id, :user_id, :name)
    end
end
