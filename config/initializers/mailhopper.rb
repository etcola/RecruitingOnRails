Mailhopper::Base.setup do |config|
  # The base email class used by Mailhopper
  config.email_class = DelayedMailhopper::Email

  # The base mailer class used by Mailhopper
  config.mailer_class = Mailhopper::Mailer

  # The method used by the delivery agent to deliver emails from your queue
  config.default_delivery_method = :smtp
end