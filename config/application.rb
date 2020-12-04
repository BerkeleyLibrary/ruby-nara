require_relative '../lib/docker'
Docker::Secret.setup_environment!

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module NewNara
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # ############################################################
    # Customize logging

    require 'lib_it/logging'
    LibIT::Logging.configure!
  end
end
