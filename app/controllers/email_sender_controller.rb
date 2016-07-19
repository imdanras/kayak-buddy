class EmailSenderController < ActionMailer::Base
  def display
  	UserMailer.email_sender.deliver_now
  	mail(
      :subject => 'Hello from Kayak Buddy!',
      :to  => params[:to_email],
      :from => 'KAYAK',
      :html_body => params[:from_email],
      :track_opens => 'true')
  	redirect_to root_path
  end
end
