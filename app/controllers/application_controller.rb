class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :get_settings
  before_action :search_form


  def get_settings
    @setting = Setting.first
  end

  def search_form
    @option_developers = Developer.select("id,developer")
    #@option_properties = Property.select("id,name")
    @option_locations  = Location.select("id,area")
    @option_price_range= PriceRange.select("id,range")
  end

  protected

  def login_required
    if !current_user
      redirect_to root_url
    else
      return true
    end
  end

end
