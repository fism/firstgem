# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'firstruby/version'

Gem::Specification.new do |spec|
  spec.name          = "firstruby"
  spec.version       = FirstRuby::VERSION
  spec.authors       = ["Michael Fisher"]
  spec.email         = ["blog@ysobad.com"]
  spec.summary       = %q{Just a test ruby gem.}
  spec.description   = %q{This is my first ruby gem. Nothing special.}
  spec.homepage      = "http://www.xansite.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake",    "~> 10.3"
  spec.add_development_dependency "mongo",   "~> 1.3"
  spec.add_development_dependency "bson",    "~> 2.2"
  spec.add_development_dependency "rspec",   "~> 2.9"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-remote"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "coveralls"
end
