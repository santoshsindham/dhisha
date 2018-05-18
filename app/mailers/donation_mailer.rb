class DonationMailer < ApplicationMailer

  def thanks_email
    @user = params[:user]
    @donation = params[:donation]
    mail(to: @user.email, subject: 'Thanks for making a donation @Dhisha.org')
  end
end
