# frozen_string_literal: true

ENV['MONGOID_ENV'] = 'test'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

require 'rubygems'
require 'rspec'

require 'mongoid/compatibility'
require 'support/mongoid'

RSpec.configure(&:raise_errors_for_deprecations!)
