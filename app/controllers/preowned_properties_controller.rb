require 'will_paginate/array'

class PreownedPropertiesController < ApplicationController

  before_filter :select_locations,      :only => [:new, :create, :edit, :update]

  def index
    @preowned = PreownedProperty.show_all
    @count    = @preowned.size
    @preowned = @preowned.paginate(page: params[:page], per_page: 1)
  end

  def show
    @property = PreownedProperty.find_by_permalink(params[:id])
  end

  def new
    @preowned_property = PreownedProperty.new
  end

  def create
    @preowned_property = PreownedProperty.new(preowned_params)
    if @preowned_property.save
      flash[:notice] = "Successfully created preowned property"
      redirect_to preowned_property_url(@preowned_property)
    else
      flash[:error] = "Unable to create preowned property. Please check your entries"
      render :action => 'new'
    end
  end

  def edit
    @preowned_property = PreownedProperty.find_by_permalink(params[:id])
  end


  def update
    @preowned = PreownedProperty.find_by_permalink(params[:id])
    if @preowned.update_attributes(preowned_params)
      flash[:notice] = "Successfully updated preowned property"
      redirect_to preowned_property_url(@preowned)
    else
      flash[:error] = "Unable to update preowned property. Please check your entries"
      render :action => 'edit'
    end
  end

  def destroy
    @preowned = PreownedProperty.find_by_permalink(params[:id])
    if @preowned.destroy
      flash[:notice] = "Successfully deleted preowned property"
    else
      flash[:error] = "Error in deleting preowned property"
    end
    redirect_to preowned_properties_url
  end

  def search
    #developer, location, property status, unit type, price range


      @preowned = PreownedProperty.where(nil)
      @preowned = @preowned.where("developer_id = ?", params[:developer_id]) if params[:developer_id].present?
      @preowned = @preowned.where("location = ?", params[:location]) if params[:location].present?
      @preowend = @preowned.where("price_range = ?", params[:price_range]) if params[:price_range].present?
      @preowned = @preowned.where("rent_or_sale = ?", params[:rent_or_sale]) if params[:rent_or_sale].present?

      @count    = @preowned.size
      @preowned = @preowned.paginate(page: params[:page], per_page: 1)

      render "preowned_properties/index"
    end

  private

    def preowned_params
      params.require(:preowned_property).permit(:name, :permalink, :address, :location, :project_name, :developer, :view, :orientation,
        :unit_type, :unit_size, :bedrooms, :bathrooms, :parking, :furnished, :monthly_dues, :price, :latitude, :longitude,
        :elevators, :swimming_pool, :fitness_gym, :parking, :function_room, :retail_area, :childrens_play_area, :garden,
        :shooting_court, :laundry_room, :mail_room, :security, :lobby, :property_management_services, :clubhouse, :back_up_power,
        :status, :hidden, :rent_or_sale )
    end

    def select_locations
      @locations = Location.all.collect{|a| a.area }
      @rent_or_sale = ["Rent","Sale"]
    end

end
