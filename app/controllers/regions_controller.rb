class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  def index
    @regions = Region.all
  end

  def show
  end

  def new
    @region = Region.new
    @region.country_id = params[:country_id]
  end

  def edit
  end

  def create
    @region = Region.new(region_params)

    respond_to do |format|
      if @region.save
        format.html { redirect_to @region, 
                      notice: 'Region was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @region.update(region_params)
        format.html { redirect_to @region, 
                      notice: 'Region was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @region.destroy
    respond_to do |format|
      format.html { redirect_to regions_url, 
                    notice: 'Region was successfully destroyed.' }
    end
  end

  private
    def set_region
      @region = Region.find(params[:id])
    end

    def region_params
      params.require(:region).permit(:name, :country_id)
    end
end
