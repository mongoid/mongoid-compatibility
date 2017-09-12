ENV['MONGOID_ENV'] = 'test'

if Mongoid::Compatibility::Version.mongoid2?
  Mongoid.load! 'spec/config/mongoid2.yml'
elsif Mongoid::Compatibility::Version.mongoid3?
  Mongoid.load! 'spec/config/mongoid3.yml'
elsif Mongoid::Compatibility::Version.mongoid4?
  Mongoid.load! 'spec/config/mongoid4.yml'
elsif Mongoid::Compatibility::Version.mongoid5?
  Mongoid.load! 'spec/config/mongoid5.yml'
elsif Mongoid::Compatibility::Version.mongoid6?
  Mongoid.load! 'spec/config/mongoid6.yml'
elsif Mongoid::Compatibility::Version.mongoid7?
  Mongoid.load! 'spec/config/mongoid7.yml'
else
  fail "unsupported Mongoid version #{Mongoid::VERSION}"
end

RSpec.configure do |config|
  config.before do
    Mongoid.logger.level = Logger::INFO
    Mongo::Logger.logger.level = Logger::INFO if Mongoid::Compatibility::Version.mongoid5?
    Mongoid.purge!
  end
  config.after(:all) do
    if Mongoid::Compatibility::Version.mongoid2?
      Mongoid.master.connection.drop_database(Mongoid.database.name)
    elsif Mongoid::Compatibility::Version.mongoid3? || Mongoid::Compatibility::Version.mongoid4?
      Mongoid.default_session.drop
    else
      Mongoid::Clients.default.database.drop
    end
  end
end
