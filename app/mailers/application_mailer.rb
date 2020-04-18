class ApplicationMailer < ActionMailer::Base
  default from: 'test@test.com'
  layout 'mailer'
end
