source :rubygems

gem "rails", "2.3.14"
gem "i18n", "~> 0.4.2"
gem "coderay", "~> 1.0.6"
gem "tzinfo", "~> 0.3.31"

# Optional gem for LDAP authentication
group :ldap do
  gem "net-ldap", "~> 0.3.1"
end

# Optional gem for OpenID authentication
group :openid do
  gem "ruby-openid", "~> 2.1.4", :require => "openid"
end

# Optional gem for exporting the gantt to a PNG file, not supported with jruby
# RMagick 2 supports ruby 1.9
# RMagick 1 would be fine for ruby 1.8 but Bundler does not support
# different requirements for the same gem on different platforms
gem "rmagick", ">= 2.0.0"

gem "pg", ">= 0.13.0"

group :development do
  gem "rdoc", ">= 2.4.2"
end

group :test do
  gem "shoulda", "~> 2.10.3"
  gem "edavis10-object_daddy", :require => "object_daddy"
  gem "mocha"
end

local_gemfile = File.join(File.dirname(__FILE__), "Gemfile.local")
if File.exists?(local_gemfile)
  puts "Loading Gemfile.local ..." if $DEBUG # `ruby -d` or `bundle -v`
  instance_eval File.read(local_gemfile)
end

# Load plugins' Gemfiles
Dir.glob File.expand_path("../vendor/plugins/*/Gemfile", __FILE__) do |file|
  puts "Loading #{file} ..." if $DEBUG # `ruby -d` or `bundle -v`
  instance_eval File.read(file)
end

gem 'unicorn', :require => false
