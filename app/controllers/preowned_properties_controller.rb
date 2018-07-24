class PreownedPropertiesController < ApplicationController


  def index
    @preowned = PreownedProperty.show_all
    @count    = @preowned.size

  end

  def show
    @property = PreownedProperty.find_by_permalink(params[:id])
  end

  def new
    @preowned = PreownedProperty.new
  end

  def create
    @preowned = PreownedProperty.new(preowned_params)
    if @preowned.save
      flash[:notice] = "Successfully created preowned property"
      redirect_to preowned_property_url(@preowned)
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

  private

    def preowned_params
      params.require(:preowned_property).permit(:name, :permalink, :address, :project_name, :developer, :view, :orientation,
        :unit_type, :unit_size, :bedrooms, :bathrooms, :parking, :furnished, :monthly_dues, :price, :latitude, :longitude,
        :elevators, :swimming_pool, :fitness_gym, :parking, :function_room, :retail_area, :childrens_play_area, :garden,
        :shooting_court, :laundry_room, :mail_room, :security, :lobby, :property_management_services, :clubhouse, :back_up_power,
        :status, :hidden )
    end

end
