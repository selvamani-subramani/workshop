require File.expand_path('../boot', __FILE__)

require 'rails/all'
require 'simplecov'
SimpleCov.start 'rails'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Moviedb
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true
    
    config.generators do |g|
        g.orm :active_record
        g.template_engine :erb
        g.test_framework :shoulda
        g.force_plural true
        g.stylesheets false
        g.stylesheet_engine :scss
        g.javascripts false
         
        # Add a fallback!
        g.fallbacks[:shoulda] = :rspec
    end
  end
end
