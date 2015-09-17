ENV['MONGOID_ENV'] = 'test'

if Mongoid::Compatibility::Version.mongoid3?
  Mongoid.load! 'spec/config/mongoid3.yml'
elsif Mongoid::Compatibility::Version.mongoid4?
  Mongoid.load! 'spec/config/mongoid4.yml'
elsif Mongoid::Compatibility::Version.mongoid5?
  Mongoid.load! 'spec/config/mongoid5.yml'
else
  fail "unsupported Mongoid version #{Mongoid::VERSION}"
end

RSpec.configure do |config|
  config.before do
    Mongoid.purge!
  end
  config.after(:all) do
    if Mongoid::Compatibility::Version.mongoid3? || Mongoid::Compatibility::Version.mongoid4?
      Mongoid.default_session.drop
    else
      Mongoid::Clients.default.database.drop
    end
  end
end
