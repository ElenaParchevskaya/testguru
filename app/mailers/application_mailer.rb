class ApplicationMailer < ActionMailer::Base
  default from: %{TestGuru <alena.lemoon.test@gmail.com>}
  layout 'mailer'
end
