class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :get_settings
  before_filter :search_form


  def get_settings
    @setting = Setting.first
  end

  def search_form
    @option_developers = Developer.select("id,developer")
    #@option_properties = Property.select("id,name")
    @locations  = Location.select("id,area")
    @price_range= PriceRange.select("id,range")
  end
end
