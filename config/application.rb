require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Chirpl
  class Application < Rails::Application
    # if Rails.env.development?
    #   tunnel = LocalTunnel::Tunnel.new(3000, nil)
    #   response = tunnel.register_tunnel
    # 
    #   # Start localtunnel in a detached process.
    #   Process.detach fork { tunnel.start_tunnel }
    # 
    #   ENV['LOCALTUNNEL'] = response['host']
    # end
  end
end
