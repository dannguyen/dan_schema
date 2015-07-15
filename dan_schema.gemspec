# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dan_schema/version'


Gem::Specification.new do |spec|
  spec.name          = "dan_schema"
  spec.version       = DanSchema::VERSION
  spec.authors       = ["Dan Nguyen"]
  spec.email         = ["dan@danwin.com"]
  spec.description   = %q{A data schema just for Dan Nguyen}
  spec.summary       = %q{A data schema just for Dan Nguyen and his data}
  spec.homepage      = "https://github.com/dannguyen/dan_schema"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_dependency("bundler", ["~> 1.1"])
  spec.add_runtime_dependency 'activesupport', '~> 4.1', '>= 4.1.0'
  spec.add_development_dependency 'rake', '~> 10.4', '>= 10.4.2'

  spec.add_development_dependency("rspec", '~> 3.3', ">= 3.3.1")

end
