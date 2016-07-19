class EmailSenderController < ActionMailer::Base
  def display
  	#UserMailer.email_sender.deliver_now
  	redirect_to root_path
  end
end
