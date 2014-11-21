# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chicago_crime/version'

Gem::Specification.new do |spec|
  spec.name          = "chicago_crime"
  spec.version       = ChicagoCrime::VERSION
  spec.authors       = ["Mark Richardson"]
  spec.email         = ["markeban@yahoo.com"]
  spec.summary       = %q{Find specific crime data in the city of Chicago.}
  spec.description   = %q{Find specific crime data in the city of Chicago.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "unirest", "1.1.2"
end
