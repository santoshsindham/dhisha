# Preview all emails at http://localhost:3000/rails/mailers/donation_mailer
class DonationMailerPreview < ActionMailer::Preview

  def thanks_email
    @user = {email: 'test.testing@gmail.com'}
    @donation = {amount: '1'}
    @params = {user: @user, donation: @donation}
    DonationMailer.thanks_email
  end
end
