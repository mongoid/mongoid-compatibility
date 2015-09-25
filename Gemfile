source 'http://rubygems.org'

gemspec

case version = ENV['MONGOID_VERSION'] || '5.0'
when /^5/
  gem 'mongoid', '~> 5.0'
when /^4/
  gem 'mongoid', '~> 4.0'
when /^3/
  gem 'mongoid', '~> 3.1'
when /^2/
  gem 'mongoid', '~> 2.0'
  gem 'bson_ext'
else
  gem 'mongoid', version
end

group :test do
  gem 'rspec'
end

group :development do
  gem 'rake'
  gem 'rubocop', '0.33.0'
end
