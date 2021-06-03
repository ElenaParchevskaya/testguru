class FeedbacksMailer < ApplicationMailer
  def send_message(feedback)
    @feedback = feedback

    mail to: 'alena.lemoon.test@gmail.com', subject: "Feedback form #{feedback.author}"
  end
end
