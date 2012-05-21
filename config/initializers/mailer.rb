# if Rails.env.production? && ENV['SENDGRID_USERNAME'] && ENV['SENDGRID_PASSWORD']
#   ActionMailer::Base.delivery_method = :smtp
#   ActionMailer::Base.smtp_settings = {
#     :address        => 'smtp.sendgrid.net',
#     :port           => '587',
#     :authentication => :plain,
#     :user_name      => ENV['SENDGRID_USERNAME'],
#     :password       => ENV['SENDGRID_PASSWORD'],
#     :domain         => 'worldmathaba.net'
#   }
# end

if Rails.env.production? && ENV['POSTMARK_APP']
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    :address        => 'smtp.postmarkapp.com',
    :port           => '25',
    :authentication => :cram_md5,
    :user_name      => ENV['POSTMARK_APP'],
    :password       => ENV['POSTMARK_APP'],
    :domain         => 'worldmathaba.net'
  }
end