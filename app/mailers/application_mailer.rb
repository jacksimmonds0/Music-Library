class ApplicationMailer < ActionMailer::Base
  default to: "info@mynotes.com", from: "info@mynotes.com"
  layout 'mailer'
end
