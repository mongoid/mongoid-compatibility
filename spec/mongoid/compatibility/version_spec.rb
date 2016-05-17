require 'spec_helper'

describe Mongoid::Compatibility::Version do
  context 'mongoid? methods' do
    it 'only true for one version' do
      expect(
        (Mongoid::Compatibility::Version.methods - Object.methods).one? do |m|
          Mongoid::Compatibility::Version.send(m)
        end
      ).to be true
    end
    it 'defines version methods' do
      expect(Mongoid::Compatibility::Version.methods - Object.methods).to_not eq []
    end
    (2..6).each do |v|
      context "mongoid #{v}" do
        it "responds to mongoid#{v}?" do
          expect(Mongoid::Compatibility::Version).to respond_to("mongoid#{v}?")
        end
      end
    end
  end
end
