require 'spec_helper'

describe Mongoid::Compatibility::Version do
  context 'mongoid? methods' do
    it 'only true for one version' do
      expect((2..7).one? do |v|
        Mongoid::Compatibility::Version.send("mongoid#{v}?")
      end).to be true
    end
    context "current version #{Mongoid::VERSION}" do
      let(:version) { Mongoid::VERSION.split('.').first.to_i }
      it 'mongoidX?' do
        expect(Mongoid::Compatibility::Version.send("mongoid#{version}?")).to be true
      end
      it 'mongoidX?_or_newer?' do
        expect(Mongoid::Compatibility::Version.send("mongoid#{version}_or_newer?")).to be true
        if Mongoid::Compatibility::Version.respond_to?("mongoid#{version - 1}_or_newer?")
          expect(Mongoid::Compatibility::Version.send("mongoid#{version - 1}_or_newer?")).to be true
        end
        if Mongoid::Compatibility::Version.respond_to?("mongoid#{version - 1}_or_older?")
          expect(Mongoid::Compatibility::Version.send("mongoid#{version - 1}_or_older?")).to be false
        end
        if Mongoid::Compatibility::Version.respond_to?("mongoid#{version + 1}_or_older?")
          expect(Mongoid::Compatibility::Version.send("mongoid#{version + 1}_or_older?")).to be true
        end
        if Mongoid::Compatibility::Version.respond_to?("mongoid#{version + 1}_or_newer?")
          expect(Mongoid::Compatibility::Version.send("mongoid#{version + 1}_or_newer?")).to be false
        end
      end
      it 'mongoidX?_or_older?' do
        expect(Mongoid::Compatibility::Version.send("mongoid#{version}_or_older?")).to be true
      end
    end
    (2..7).each do |v|
      context "mongoid #{v}" do
        before do
          stub_const('::Mongoid::VERSION', "#{v}")
          stub_const("::Mongoid::Compatibility::Version::ClassMethods::V#{v}", 1)
        end
        it "responds to mongoid#{v}?" do
          expect(Mongoid::Compatibility::Version).to respond_to("mongoid#{v}?")
        end
        it "mongoid#{v}?" do
          expect(Mongoid::Compatibility::Version.send("mongoid#{v}?")).to be true
        end
        it "mongoid#{v}_or_newer?" do
          expect(Mongoid::Compatibility::Version.send("mongoid#{v}_or_newer?")).to be true
        end
        it "mongoid#{v}_or_older?" do
          expect(Mongoid::Compatibility::Version.send("mongoid#{v}_or_older?")).to be true
        end
      end
    end
  end
end
