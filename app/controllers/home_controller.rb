class HomeController < ApplicationController

  def index
    @articles = Article.show_latest
    @featured = Property.show_featured_listings
    @latest   = Property.show_latest_listings
    @preowned = PreownedProperty.limit(5)
  end

  def contact_us
  end

  def about_us
    @setting  = Setting.first
    @count    = Property.show_all_visible.count
    @agents   = Agent.all
  end

  def subscribe
    if params[:email].present?
      NewsletterSubscription.create!(email: params[:email], name: params[:name])
    end
    #todo: display message
    redirect_to root_url
  end
end
