class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :get_settings


  def get_settings
    @setting = Setting.first
  end
end
