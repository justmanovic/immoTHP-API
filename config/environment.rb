# Load the Rails application.
require_relative "application"
ActionMailer::Base.smtp_settings = {
  :user_name =>ENV["SENDGRID_LOGIN"], # This is the string literal 'apikey', NOT the ID of your API key
  :password => ENV["SENDGRID_PWD"], # This is the secret sendgrid API key which was issued during API key creation
  :domain => 'gmail.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
# Initialize the Rails application.
Rails.application.initialize!
