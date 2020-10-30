# frozen_string_literal: true

Healthcheck.configure do |config|
  config.success = 200
  config.error = 503
  config.verbose = false
  config.route = '/healthcheck'
  config.method = :get

  # -- Response --
  config.custom = ->(controller, checker) {
    controller.render json: 'App Healthy' unless checker.errored?
  }

end
