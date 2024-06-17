# frozen_string_literal: true

module Mongoid
  module Compatibility
    module Version
      module ClassMethods
        (2..9).each do |v|
          const_set "V#{v}", Mongoid::VERSION =~ Regexp.new("^#{v}\.")

          define_method "mongoid#{v}?" do
            !!Mongoid::Compatibility::Version::ClassMethods.const_get("V#{v}")
          end

          define_method "mongoid#{v}_or_newer?" do
            Gem::Version.new(Mongoid::VERSION).segments.first >= v
          end

          define_method "mongoid#{v}_or_older?" do
            Gem::Version.new(Mongoid::VERSION).segments.first <= v
          end
        end
      end

      extend ClassMethods
    end
  end
end
