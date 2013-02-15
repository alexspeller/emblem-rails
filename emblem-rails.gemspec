# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emblem/rails/version'

Gem::Specification.new do |gem|
  gem.name          = "emblem-rails"
  gem.version       = Emblem::Rails::VERSION
  gem.authors       = ["Alex Speller", "Alex Matchneer"]
  gem.email         = ["alex@alexspeller.com"]
  gem.description   = %q{Use emblem.js with ember-rails - see https://github.com/machty/emblem.js}
  gem.summary       = %q{Use emblem.js with ember-rails}
  gem.homepage      = "http://github.com/alexspeller/emblem-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "barber-emblem", "0.0.3"
end
