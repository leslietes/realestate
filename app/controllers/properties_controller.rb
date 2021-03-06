require 'will_paginate/array'

class PropertiesController < ApplicationController

  before_action :login_required, except: [:index,:show,:search]

  before_action :select_property_types, only: [:new,:create,:edit,:update]
  before_action :select_locations,      only: [:new, :create, :edit, :update]
  before_action :select_unit_types,     only: [:new, :create, :edit, :update]
  before_action :developers,            only: [:new,:create,:edit,:update]
  before_action :inquiry_form,          only: [:show]

  before_action :show_preselling,       only: [:index,:search]

  def index
  	#_projects = Property.show_all_visible
  	#proj = _projects.collect{|p| p.name }.join(', ')

  	#@page_title = "CebuCondoListings | Cebu Condominium Listings - #{proj}"
    #if logged_in?
    if params[:sort_by].present?
      if params[:sort_by] == "newness"
        @properties = Property.order('properties.created_at DESC')
      else
        @properties = Property.order('properties.price_from ASC')
      end
    else
      @properties = Property.order('properties.price_from ASC')
    end


      @count      = @properties.size
      @properties = @properties.paginate(page: params[:page], per_page: params[:per_page])


    #else
    #  @properties = Property.show_all_visible
    #end
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:notice] = "Successfully created property"
      redirect_to @property
    else
      flash[:error] = "Unable to created property. Please check your entries"
      render :action => 'new'
    end
  end

  def edit
    @property = Property.find_by_permalink(params[:id])
  end

  def update
    @property = Property.find_by_permalink(params[:id])
    if @property.update_attributes(property_params)
      flash[:notice] = "Successfully updated property"
      redirect_to property_url(@property)
    else
      flash[:error] = "Unable to update property. Please check your entries"
      render :action => 'edit'
    end
  end

  def show
    @partial  = 'information'
    @property = Property.find_by_permalink(params[:id])
    #@page_title = "CebuCondoListings | Cebu Condominium Listings - #{@property.name}, #{@property.developer_name}, #{@property.location}, Cebu"
  end

  def destroy
    @property = Property.find_by_permalink(params[:id])
    if @property.destroy
      flash[:notice] = "Successfully deleted property"
    else
      flash[:error] = "Error in deleting property"
    end
    redirect_to properties_url
  end

  def search
    if params[:sort_by].present?
      if params[:sort_by] == "newness"
        @properties = Property.order('properties.created_at DESC')
      else
        @properties = Property.order('properties.price_from DESC')
      end
    else
      @properties = Property.order('properties.price_from DESC')
    end
    if params[:developer_id].present?
      properties_add = Property.where(developer_id: params[:developer_id])
      @properties = @properties.merge(properties_add)
    end
    if params[:location].present?
      properties_add = Property.where(location: params[:location])
      @properties = @properties.merge(properties_add)
    end
    if params[:status].present?
      properties_add = Property.where(status: params[:status])
      @properties = @properties.merge(properties_add)
    end
    if params[:unit_type].present?
      properties_add = Property.where('unit_types LIKE ?', "%#{params[:unit_type]}%")
      @properties = @properties.merge(properties_add)
    end
    if params[:price].present?
      if params[:price] == "1"
        properties_add = Property.where('properties.price_to <= ?', 1000000)
        @properties = @properties.merge(properties_add)
      end
      if params[:price] == "2"
        properties_add = Property.where('properties.price_from >= ?', 1000000).where('properties.price_to <= ?', 2000000)
        @properties = @properties.merge(properties_add)
      end
      if params[:price] == "3"
        properties_add = Property.where('properties.price_from >= ?', 2000000).where('properties.price_to <= ?', 3000000)
        @properties = @properties.merge(properties_add)
      end
      if params[:price] == "4"
        properties_add = Property.where('properties.price_from > ?', 3000000).where('properties.price_to < ?', 4000000)
        @properties = @properties.merge(properties_add)
      end
      if params[:price] == "5"
        properties_add = Property.where('properties.price_from > ?', 4000000).where('properties.price_to < ?', 5000000)
        @properties = @properties.merge(properties_add)
      end
      if params[:price] == "6"
        properties_add = Property.where('properties.price_from > ?', 5000000)
        @properties = @properties.merge(properties_add)
      end
    end

    @count = @properties.count
    if params[:per_page].present?
      if params[:per_page].to_i < 2
        @properties = @properties.paginate(page: params[:page], per_page: 12)
      else
        @properties = @properties.paginate(page: params[:page], per_page: params[:per_page])
      end
    else
      @properties = @properties.paginate(page: params[:page], per_page: 12)
    end
    render "index"

  end

  private

  def show_preselling
    @preselling = Property.show_preselling
  end

  def select_property_types
    @property_types = Property.property_types
  end

  def select_locations
    @locations = Location.all.collect{|a| a.area }
  end

  def select_unit_types
    @unit_types = ['studio','1 bedroom','2 bedroom','3 bedroom','loft','penthouse']
  end


  def developers
    developers = Developer.all
    @developers = developers.map{|d| [d.developer,d.id]}
  end

  def inquiry_form
    #@contact = Contact.new
  end

  def property_params
    params.require(:property).permit(:developer_id,:name,:permalink,:address,:location,
    :completed,:target_completion_date,:description,
    :unit_types,:unit_sizes,:price_range,:amenities,:features,
    :unit_specifications,:payment_terms,:as_low_as,:as_low_as_label, :no_of_floors, :no_of_bldgs, :no_of_units,
    :reservation_fee,:property_type,:featured,:hidden, :photo, :logo, :location_map, :studio_layout,
    :one_bedroom_layout, :two_bedroom_layout, :three_bedroom_layout, :penthouse_layout, :loft_layout,
    :studio, :one_bedroom, :two_bedroom, :three_bedroom, :penthouse, :loft,
    :studio_size, :one_bedroom_size, :two_bedroom_size, :three_bedroom_size, :penthouse_size, :loft_size,
    :studio_price, :one_bedroom_price, :two_bedroom_price, :three_bedroom_price, :penthouse_price, :loft_price,
    :elevators, :swimming_pool, :fitness_gym, :parking, :function_room, :retail_area, :childrens_play_area,
    :garden, :shooting_court, :laundry_room, :mail_room, :security, :lobby, :property_management_services,
    :clubhouse, :back_up_power, :preselling, :price_from, :price_to, :latitude, :longitude
    )
  end

end
