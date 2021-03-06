# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parasut_rails/version'

Gem::Specification.new do |spec|
  spec.name          = "parasut_rails"
  spec.version       = ParasutRails::VERSION
  spec.authors       = ['Dunya Kirkali', 'Onur Kucukkecce']
  spec.email         = ['dunyakirkali@ahtung.co', 'onurkucukkece@ahtung.co']

  spec.summary       = %q{Parasut api for rails}
  spec.description   = %q{Parasut api for rails}
  spec.homepage      = "https://github.com/ahtung/parasut_rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'railties', '>= 3.0.0'
  spec.add_runtime_dependency 'parasut'
end
