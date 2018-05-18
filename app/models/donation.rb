class Donation < ApplicationRecord
  belongs_to :user

  after_create :send_email_to_donar

  private
    def send_email_to_donar
      DonationMailer.with(user: self.user, donation: self).thanks_email.deliver_later
    end
end
