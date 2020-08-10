class ApplicationMailer < ActionMailer::Base
  default from: %{TestGuru <eru_iluvatar@testguru.com>}
  layout 'mailer'
end
