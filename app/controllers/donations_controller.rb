class DonationsController < ApplicationController

  def donations
    if current_user
      sum = 0
      @donations = current_user.donations
      @donations.each { |a| sum+=a.amount }
      @total = sum
    end
  end
end
