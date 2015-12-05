class NotificationMailer < ActionMailer::Base
  default from: "no-reply@hangryapp.com"

  def comment_added
  	mail(to: "kurt.thomas34@gmail.com",
  		  subject: "A comment has been added to your place")
  end
end
