# frozen_string_literal: true

require 'spec_helper'

describe Mongoid::Compatibility::ObjectId do
  it 'valid' do
    expect(Mongoid::Compatibility::ObjectId.legal?('4e4d66343b39b68407000001')).to be true
  end
  it 'invalid' do
    expect(Mongoid::Compatibility::ObjectId.legal?('asadsf')).to be false
  end
end
