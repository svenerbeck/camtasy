# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'camtasy/version'

Gem::Specification.new do |spec|
  spec.name          = "camtasy"
  spec.version       = Camtasy::VERSION
  spec.authors       = ["mo khan"]
  spec.email         = ["mo@mokhan.ca"]
  spec.summary       = %q{playing with webcams.}
  spec.description   = %q{no kidding... i'm just messing around with webcams.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "thor", '~> 0.19'
  spec.add_runtime_dependency "av_capture", '~> 1.0'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
