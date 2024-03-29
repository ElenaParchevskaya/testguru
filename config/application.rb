require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Testguru
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.time_zone = "Minsk"
    config.i18n.default_locale = :ru
     #
     # config.autoload_paths << "#{Rails.root}/lib/clients"
    config.autoload_paths << "#{Rails.root}/specifications"

    config.generators do |g|
      g.template_engine :slim
    end
  end
end
