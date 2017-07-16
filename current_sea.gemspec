# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'current_sea/version'

Gem::Specification.new do |spec|
  spec.name          = "current_sea"
  spec.version       = CurrentSea::VERSION
  spec.authors       = ["Terry-Thompson"]
  spec.email         = ["terry.lyn.thompson@gmail.com"]

  spec.summary       = "This gem allows you to check global currency exchange rates"
  spec.description   = "A command line interface that scrapes web data"
  spec.homepage      = "https://github.com/Terry-Thompson/current_sea-"

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

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
