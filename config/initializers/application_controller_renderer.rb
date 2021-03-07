# Be sure to restart your server when you modify this file.

ActiveSupport::Reloader.to_prepare do
  ApplicationController.renderer.defaults.merge!(
    http_host: '127.0.0.1:5501',
    https: false
  )
end
