class BoardMailer < ApplicationMailer
  default from: "donotreply@tandemarbor.com"

  def signup_confirmation(board)
    @board = board
    # attachments["#{@board.image}"] = File.read("#{Rails.root}/public/#{@board.image}") unless @board.image_url.nil?
    mail to: "skoretskiy@webiprog.com", subject:  "Vendor Onboarding Form " + "#{@board.legal_business_name}"
  end

  def send_confirmation(board)
    @board = board
    # mail to: board.email,
    mail to: "skoretskiy@webiprog.com",
         reply_to: "vendors@tandemarbor.com",
         subject:  "Vendor Onboarding Form"
  end
end