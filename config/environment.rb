# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {

:address => 'smtp.gmail.com',

:port => '587',


:authentication => :plain, #base64 encode 12:43:12 p.m. - Client: AUTH PLAIN ADEyMwAxMjM=

:user_name => ENV['SENDGRID_USERNAME'],

:password => ENV['SENDGRID_PASSWORD'],

:domain => 'shashin-app.herokuapp.com/',








:enable_starttls_auto => true


}