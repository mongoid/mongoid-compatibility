# frozen_string_literal: true

require 'spec_helper'

describe Mongoid::Compatibility do
  it 'loads the hyphenated and underscored compatibility entry points' do
    require 'mongoid-compatibility'
    require 'mongoid_compatibility'

    expect(Mongoid::Compatibility::Version).to respond_to(:mongoid9?)
    expect(Mongoid::Compatibility::ObjectId).to respond_to(:legal?)
  end

  it 'defines a semantic gem version' do
    expect(Mongoid::Compatibility::VERSION).to match(/\A\d+\.\d+\.\d+\z/)
  end
end
