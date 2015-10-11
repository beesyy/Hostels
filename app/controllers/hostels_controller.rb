class HostelsController < ApplicationController
  before_action :set_hostel, only: [:show, :edit, :update, :destroy]

  def index
    @hostels = Hostel.all
  end

  def show
  end

  def new
    @hostel = Hostel.new
    @hostel.location_id = params[:location_id]
    @hostel.location_type = params[:type]
  end

  def edit
  end

  def create
    @hostel = Hostel.new(hostel_params)

    respond_to do |format|
      if @hostel.save
        format.html { redirect_to @hostel, 
                      notice: 'Hostel was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @hostel.update(hostel_params)
        format.html { redirect_to @hostel, 
                      notice: 'Hostel was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @hostel.destroy
    respond_to do |format|
      case @hostel.location_type
      when "Region"
        format.html { redirect_to region_path(@hostel.location_id), 
                      notice: 'Hostel was successfully destroyed.' }
      when "City"
        format.html { redirect_to city_path(@hostel.location_id), 
                      notice: 'Hostel was successfully destroyed.' }
      end
    end
  end

  private
    def set_hostel
      @hostel = Hostel.find(params[:id])
    end

    def hostel_params
      params.require(:hostel).permit(:name, :address, :info, :average_price,
                                     :location_type, :location_id)
    end
end
