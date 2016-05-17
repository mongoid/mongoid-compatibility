module Mongoid
  module Compatibility
    module Version
      module ClassMethods
        (2..6).each do |v|
          const_set "V#{v}", Mongoid::VERSION =~ Regexp.new("^#{v}\.")

          define_method "mongoid#{v}?" do
            !!Mongoid::Compatibility::Version::ClassMethods.const_get("V#{v}")
          end
        end
      end

      extend ClassMethods
    end
  end
end
