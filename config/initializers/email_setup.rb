# if Rails.env.production?
# ActionMailer::Base.delivery_method = :smtp
# ActionMailer::Base.smtp_settings = {
#   :user_name => ENV['SENDGRID_USERNAME'],
#   :password => ENV['SENDGRID_PASSWORD'],
#   :domain => 'pnwcapitalbk.com',
#   :address => 'smtp.sendgrid.net',
#   :port => 587,
#   :authentication => :plain,
#   :enable_starttls_auto => true
# }
# end

# config.action_mailer.delivery_method = :postmark
#
# config.action_mailer.postmark_settings = {
#   api_token: ENV['postmark_api_token']
# }
