class UserNotifier < ActionMailer::Base
  def signup_notification(user)
    setup_email(user)
    @subject    += 'Please activate your new account'
    @body[:url] = "http://dailybasis.heroku.com/account/activate/#{user.activation_code}"
  end
  
  def activation(user)
    setup_email(user)
    @subject    += 'Welcome To DAily TAsk !'
    @body[:url]  = "http://dailybasis.heroku.com/"
  end
  
  protected
  def setup_email(user)
    @recipients  = "#{user.email}"
    @from        = "DAily TAsk"
    @subject     = "[DAily TAsk] "
    @sent_on     = Time.now
    @body[:user] = user
  end
end
