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

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|lib)/}) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'http_logger'
  spec.add_development_dependency 'awesome_print'


  spec.add_dependency 'httparty', '~> 0.11'
  spec.add_dependency 'json', '~> 1.7', '>= 1.7.7'
end
