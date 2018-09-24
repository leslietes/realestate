require 'will_paginate/array'

class PreownedPropertiesController < ApplicationController

  before_filter :select_locations,      :only => [:new, :create, :edit, :update]

  def index
    if params[:sort_by].present?
      if params[:sort_by] == "newness"
        @preowned = PreownedProperty.order('preowned_properties.created_at DESC')
      else
        @preowned = PreownedProperty.order('preowned_properties.price DESC')
      end
    else
      @preowned = PreownedProperty.order('preowned_properties.created_at DESC')
    end
    @count      = @preowned.size
    if params[:per_page].present?
      if params[:per_page].to_i < 2
        @preowned = @preowned.paginate(page: params[:page], per_page: 12)
      else
        @preowned = @preowned.paginate(page: params[:page], per_page: params[:per_page])
      end
    else
      @preowned = @preowned.paginate(page: params[:page], per_page: 12)
    end
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
    if params[:sort_by].present?
      if params[:sort_by] == "newness"
        @preowned = PreownedProperty.order('preowned_properties.created_at DESC')
      else
        @preowned = PreownedProperty.order('preowned_properties.price DESC')
      end
    else
      @preowned = PreownedProperty.order('preowned_properties.created_at DESC')
    end
    @count = @preowned.size
    if params[:developer_id].present?
      properties_add = PreownedProperty.where(developer_id: params[:developer_id])
      @preowned = @preowned.merge(properties_add)
    end
    if params[:location].present?
      properties_add = PreownedProperty.where(location: params[:location])
      @preowned = @preowned.merge(properties_add)
    end
    if params[:rent_or_sale].present?
      properties_add = PreownedProperty.where(rent_or_sale: params[:rent_or_sale])
      @preowned = @preowned.merge(properties_add)
    end
    if params[:unit_type].present?
      properties_add = PreownedProperty.where(unit_type: params[:unit_type])
      @preowned = @preowned.merge(properties_add)
    end
    if params[:price].present?
      if params[:price] == "1"
        properties_add = PreownedProperty.where('preowned_properties.price <= ?', 1000000)
        @preowned = @preowned.merge(properties_add)
      end
      if params[:price] == "2"
        properties_add = PreownedProperty.where('preowned_properties.price >= ?', 1000000).where('preowned_properties.price <= ?', 2000000)
        @preowned = @preowned.merge(properties_add)
      end
      if params[:price] == "3"
        properties_add = PreownedProperty.where('preowned_properties.price >= ?', 2000000).where('preowned_properties.price <= ?', 3000000)
        @preowned = @preowned.merge(properties_add)
      end
      if params[:price] == "4"
        properties_add = PreownedProperty.where('preowned_properties.price > ?', 3000000).where('preowned_properties.price < ?', 4000000)
        @preowned = @preowned.merge(properties_add)
      end
      if params[:price] == "5"
        properties_add = PreownedProperty.where('preowned_properties.price > ?', 4000000).where('preowned_properties.price < ?', 5000000)
        @preowned = @preowned.merge(properties_add)
      end
      if params[:price] == "6"
        properties_add = PreownedProperty.where('preowned_properties.price > ?', 5000000)
        @preowned = @preowned.merge(properties_add)
      end
    end
    @count = @preowned.count
    if params[:per_page].present?
      if params[:per_page].to_i < 2
        @preowned = @preowned.paginate(page: params[:page], per_page: 12)
      else
        @preowned = @preowned.paginate(page: params[:page], per_page: params[:per_page])
      end
    else
      @preowned = @preowned.paginate(page: params[:page], per_page: 12)
    end
    render "index"

  end

  private

    def preowned_params
      params.require(:preowned_property).permit(:name, :permalink, :address, :location, :project_name, :developer_id, :view, :orientation, :unit_type, :unit_size, :bedrooms, :bathrooms, :parking_slot, :furnished, :monthly_dues, :price, :latitude, :longitude, :elevators, :swimming_pool, :fitness_gym, :parking, :function_room, :retail_area, :childrens_play_area, :garden, :shooting_court, :laundry_room, :mail_room, :security, :lobby, :property_management_services, :clubhouse, :back_up_power, :status, :hidden, :rent_or_sale, :photo, :logo, :location_map )
    end

    def select_locations
      @locations = Location.all.collect{|a| a.area }
      @rent_or_sale = ["Rent","Sale"]
    end

end
