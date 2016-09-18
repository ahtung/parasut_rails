require 'aruba/cucumber'

Aruba.configure do |config|
  config.exit_timeout = Integer ENV.fetch("ARUBA_TIMEOUT") { 120 }
end
