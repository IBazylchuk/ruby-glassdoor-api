# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glassdoor/version'

Gem::Specification.new do |spec|
  spec.name          = "glassdoor-api"
  spec.version       = Glassdoor::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ["Ilya Bazylchuk"]
  spec.email         = ["ilya.bazylchuk@gmail.com"]

  spec.summary       = %q{Wrapper for Glassdoor API}
  spec.description   = %q{Wrapper for Glassdoor API}
  spec.homepage      = "https://github.com/IBazylchuk/ruby-glassdoor-api"
  spec.license       = "MIT"

  spec.files         = Dir['{lib}/**/*.rb', 'LICENSE', '*.md']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'http_logger'
  spec.add_development_dependency 'awesome_print'


  spec.add_dependency 'rest-client'
  spec.add_dependency 'addressable'
  spec.add_dependency 'multi_json'
end
