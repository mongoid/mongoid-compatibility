# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'mongoid/compatibility/self'

Gem::Specification.new do |s|
  s.name = 'mongoid-compatibility'
  s.version = Mongoid::Compatibility::VERSION
  s.authors = ['Daniel Doubrovkine']
  s.email = 'dblock@dblock.org'
  s.platform = Gem::Platform::RUBY
  s.required_rubygems_version = '>= 1.3.6'
  s.files = `git ls-files`.split("\n")
  s.require_paths = ['lib']
  s.homepage = 'http://github.com/mongoid/mongoid-compatibility'
  s.licenses = ['MIT']
  s.summary = 'Compatibility helpers for Mongoid.'
  s.add_dependency 'activesupport'
  s.add_dependency 'mongoid', '>= 2.0'

  s.add_development_dependency 'appraisal', '~> 2.0'
  s.add_development_dependency 'mongoid-danger', '~> 0.2'
  s.add_development_dependency 'rake', '< 12'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop', '~> 1.36.0'
end
