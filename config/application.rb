require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.active_record.encryption.primary_key = 'V6PPdVe19deq43jM4ATMzj36PogZfwsA'
    config.active_record.encryption.deterministic_key = 'l82nKCLTUuYIA18sNtd3ejMvsOKxdSur'
    config.active_record.encryption.key_derivation_salt = '51EQZK6iyeMenTMzWAYZ3KFKKraawBpl'

    config.active_record.encryption.support_unencrypted_data = true
  end
end
