# frozen_string_literal: true

module Mongoid
  module Compatibility
    module ObjectId
      def self.legal?(value)
        Mongoid::Compatibility::Version.mongoid3? ? Moped::BSON::ObjectId.legal?(value) : BSON::ObjectId.legal?(value)
      end
    end
  end
end
