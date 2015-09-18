module Mongoid
  module Compatibility
    module Version
      def self.mongoid3?
        Mongoid::VERSION =~ /^3\./
      end

      def self.mongoid4?
        Mongoid::VERSION =~ /^4\./
      end

      def self.mongoid5?
        Mongoid::VERSION =~ /^5\./
      end
    end
  end
end
