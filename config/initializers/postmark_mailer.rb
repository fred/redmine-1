# Use :test mode for test env, and check if postmark is installed for dev and prod env.
if Rails.env.test?
  ActionMailer::Base.delivery_method = :test
elsif ActionMailer::Base.delivery_methods.has_key?(:postmark)
  ActionMailer::Base.delivery_method = :postmark
  ActionMailer::Base.postmark_settings = { api_key: ENV['POSTMARK_KEY'] }
  Postmark.api_key = ENV['POSTMARK_KEY']
  Postmark.secure = true
end
