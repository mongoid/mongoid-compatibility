$LOAD_PATH.push File.expand_path('../lib', __FILE__)
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
  s.add_dependency 'mongoid', '>= 2.0'
  s.add_dependency 'activesupport'
end
