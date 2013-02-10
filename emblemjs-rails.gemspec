# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emblemjs/rails/version'

Gem::Specification.new do |gem|
  gem.name          = "emblemjs-rails"
  gem.version       = Emblemjs::Rails::VERSION
  gem.authors       = ["Alex Speller"]
  gem.email         = ["alex@alexspeller.com"]
  gem.description   = %q{Use emblem.js with ember-rails - see https://github.com/machty/emblem.js}
  gem.summary       = %q{Use emblem.js with ember-rails}
  gem.homepage      = "http://github.com/alexspeller/emblem-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency "barber-emblem"
end
