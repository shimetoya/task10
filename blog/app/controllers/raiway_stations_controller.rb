class RaiwayStationsController < ApplicationController
  before_action :set_raiway_station, only: [:show, :edit, :update, :destroy]

  # GET /raiway_stations
  # GET /raiway_stations.json
  def index
    @raiway_stations = RaiwayStation.all
  end

  # GET /raiway_stations/1
  # GET /raiway_stations/1.json
  def show
  end

  # GET /raiway_stations/new
  def new
    @raiway_station = RaiwayStation.new
  end

  # GET /raiway_stations/1/edit
  def edit
  end

  # POST /raiway_stations
  # POST /raiway_stations.json
  def create
    @raiway_station = RaiwayStation.new(raiway_station_params)

    respond_to do |format|
      if @raiway_station.save
        format.html { redirect_to @raiway_station, notice: 'Raiway station was successfully created.' }
        format.json { render :show, status: :created, location: @raiway_station }
      else
        format.html { render :new }
        format.json { render json: @raiway_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raiway_stations/1
  # PATCH/PUT /raiway_stations/1.json
  def update
    respond_to do |format|
      if @raiway_station.update(raiway_station_params)
        format.html { redirect_to @raiway_station, notice: 'Raiway station was successfully updated.' }
        format.json { render :show, status: :ok, location: @raiway_station }
      else
        format.html { render :edit }
        format.json { render json: @raiway_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raiway_stations/1
  # DELETE /raiway_stations/1.json
  def destroy
    @raiway_station.destroy
    respond_to do |format|
      format.html { redirect_to raiway_stations_url, notice: 'Raiway station was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raiway_station
      @raiway_station = RaiwayStation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raiway_station_params
      params.require(:raiway_station).permit(:title)
    end
end
