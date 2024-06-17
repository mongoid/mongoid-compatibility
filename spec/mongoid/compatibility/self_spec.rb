# frozen_string_literal: true

require 'spec_helper'

describe Mongoid::Compatibility do
  it 'has a version' do
    expect(Mongoid::Compatibility::VERSION).not_to be_nil
  end
end
