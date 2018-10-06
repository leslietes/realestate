require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

# MAP_TOKEN = 'pk.eyJ1Ijoic2tpcGZpc2giLCJhIjoiY2prdW85Y2hmMDBoMjNwbzh4ZzQ2ZHJ1aCJ9.jwkFDUKT4UKlrGSziLNTRw'
MAP_TOKEN = 'pk.eyJ1IjoibGVzbGlldGVzIiwiYSI6ImNqbXhpdmtqcjBiM3czcnIycm1pbmV1cTQifQ.YNKzvOsN-yUMLwXGCob4mA'

module Realestate
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.assets.precompile +=  %w( application.css application.js )
  end
end
