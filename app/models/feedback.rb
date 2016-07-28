class Feedback < MailForm::Base
  EMAIL_REGEX = /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  attribute :email, validate: EMAIL_REGEX
  attribute :message
  attribute :name, validate: true

  def headers
    {
      subject: "New feedback",
      to: ENV.fetch("FEEDBACK_EMAIL"),
      from: email
    }
  end
end
