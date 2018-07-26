class PropertiesController < ApplicationController

  before_filter :select_property_types, :only => [:new,:create,:edit,:update]
  before_filter :select_locations,      :only => [:new, :create, :edit, :update]
  before_filter :select_unit_types,     :only => [:new, :create, :edit, :update]
  before_filter :developers,            :only => [:new,:create,:edit,:update]
  before_filter :inquiry_form,          :only => [:show]

  def index
  	#_projects = Property.show_all_visible
  	#proj = _projects.collect{|p| p.name }.join(', ')

  	#@page_title = "CebuCondoListings | Cebu Condominium Listings - #{proj}"
    #if logged_in?
      @properties = Property.show_all
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
    #developer, location, property status, unit type, price range
    if params[:status] == "Preowned"
      @preowned = PreownedProperty.where(nil)
      @preowned = @preowned.where("developer_id = ?", params[:developer_id]) if params[:developer_id].present?
      @preowned = @preowned.where("location = ?", params[:location]) if params[:location].present?
      @preowend = @preowned.where("price_range = ?", params[:price_range]) if params[:price_range].present?

      render "preowned_properties/index"

    else

      @properties = Property.where(nil)
      @properties = @properties.where("developer_id = ?", params[:developer_id]) if params[:developer_id].present?
      @properties = @properties.where("location = ?", params[:location]) if params[:location].present?
      @properties = @properties.where("status = ?", params[:status]) if params[:status].present?
      @properties = @properties.where("price_range = ?", params[:price_range]) if params[:price_range].present?

      render "index"
    end
  end

  private

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
    :unit_specifications,:payment_terms,:as_low_as,:as_low_as_label,
    :reservation_fee,:property_type,:featured,:hidden, :photo, :logo, :location_map, :studio_layout,
    :one_bedroom_layout, :two_bedroom_layout, :three_bedroom_layout, :penthouse_layout, :loft_layout,
    :elevators, :swimming_pool, :fitness_gym, :parking, :function_room, :retail_area, :childrens_play_area,
    :garden, :shooting_court, :laundry_room, :mail_room, :security, :lobby, :property_management_services,
    :clubhouse, :back_up_power
    )
  end

end
