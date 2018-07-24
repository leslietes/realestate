class AdminController < ApplicationController

  def settings
    @setting = Setting.first || Setting.new

    if request.post? or request.put?
      @setting.update_attributes(settings_params)
    end

    #TODO: sort alphabetically
    @locations= Location.order(:area)

    #TODO: sort
    @price_range  = PriceRange.order(:value_from)
  end

  def edit_settings
    setting = Setting.first
    setting.update_attributes(settings_params)
    if setting.save
      flash[:notice] = "Updated site settings"
    else
      flash[:error] = "Unable to update site settings"
    end
    redirect_to admin_url
  end

  def add_location
    location = Location.new(location_params)
    if location.save
      flash[:notice] = 'Successfully added location'
    else
      flash[:notice] = "Unable to add new location"
    end
    redirect_to admin_url
  end

  def remove_location
    if Location.exists?(params[:id])
      if Location.delete(params[:id])
        flash[:notice] = "Successfully deleted location"
      else
        flash[:error] = "Unable to delete location"
      end
    end
    redirect_to admin_url
  end

  def add_price_range
    price_range = PriceRange.new(price_range_params)
    if price_range.save
      flash[:notice] = "Successfully added price range"
    else
      flash[:notice] = "Unable to add new price range"
    end
    redirect_to admin_url
  end

  def remove_price_range
    if PriceRange.exists?(params[:id])
      if PriceRange.delete(params[:id])
        flash[:notice] = "Successfully deleted price range"
      else
        flash[:error] = "Unable to delete price range"
      end
    end
    redirect_to admin_url
  end

  def remove_featured1
    if setting = Setting.first
      setting.featured1 =  nil
      setting.save
    end

    redirect_to admin_url
  end

  def remove_featured2
    if setting = Setting.first
      setting.featured2 =  nil
      setting.save
    end

    redirect_to admin_url
  end

  def remove_featured3
    if setting = Setting.first
      setting.featured3 =  nil
      setting.save
    end

    redirect_to admin_url
  end

  def remove_featured4
    if setting = Setting.first
      setting.featured4 =  nil
      setting.save
    end

    redirect_to admin_url
  end

  def remove_featured5
    if setting = Setting.first
      setting.featured5 =  nil
      setting.save
    end

    redirect_to admin_url
  end

  private

  def settings_params
    params.require(:setting).permit(:production_email,:office_no,:office_address,:facebook,:twitter,:instagram,:about_us,:featured1,:featured2,:featured3,:featured4,:featured5,
    :featured1_caption,:featured2_caption,:featured3_caption,:featured4_caption,:featured5_caption)
  end

  def location_params
    params.permit(:area)
  end

  def price_range_params
    params.permit(:range,:value_from,:value_to)
  end

end
