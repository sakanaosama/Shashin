# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {

:address => 'smtp.gmail.com',
:port => '587',

# :address => 'localhost',
# :port => '25',


:authentication => :plain, #base64 encode 12:43:12 p.m. - Client: AUTH PLAIN ADEyMwAxMjM=
:user_name => "some@gmail.com",
:password => "somepassword",


:user_name => ENV['SENDGRID_USERNAME'],
:password => ENV['SENDGRID_PASSWORD'],


# :authentication => :plain, #base64 encode 12:43:12 p.m. - Client: AUTH PLAIN ADEyMwAxMjM=

# :domain => 'shashin-app.herokuapp.com',
:domain => 'localhost',
:enable_starttls_auto => true

}
