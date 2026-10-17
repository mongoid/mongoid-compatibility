# frozen_string_literal: true

require 'spec_helper'

describe Mongoid::Compatibility do
  it 'loads the hyphenated and underscored compatibility entry points' do
    require 'mongoid-compatibility'
    require 'mongoid_compatibility'

    expect(Mongoid::Compatibility::Version).to respond_to(:mongoid9?)
    expect(Mongoid::Compatibility::ObjectId).to respond_to(:legal?)
  end

  it 'defines the public gem version independently of loading Mongoid' do
    hide_const('Mongoid::Compatibility::VERSION')
    load File.expand_path('../../lib/mongoid/compatibility/self.rb', __dir__)

    expect(Mongoid::Compatibility::VERSION).to match(/\A\d+\.\d+\.\d+\z/)
  ensure
    described_class.send(:remove_const, :VERSION) if described_class.const_defined?(:VERSION)
  end
end
