class HomeController < ApplicationController

  def index
    @articles = Article.limit(5)
  end

  def contact_us
  end

  def about_us
    @setting  = Setting.first
    @count    = Property.show_all_visible.count
    @agents   = Agent.all
  end
end
