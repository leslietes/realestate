class HomeController < ApplicationController

  def index
    @articles = Article.limit(5)
  end

  def contact_us
  end
end
