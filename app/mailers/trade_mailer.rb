class TradeMailer < ApplicationMailer
  default from: "donotreply@tandemarbor.com"

  def signup_confirmation(trade)
    @trade = trade
    attachments["#{@trade.image}"] = File.read("#{Rails.root}/public/#{@trade.image}") if @trade.image != nil
    mail to: "trade@tandemarbor.com", subject:  "Vendor Form Submission " + "#{@trade.business_name}"
  end

  def send_confirmation(trade)
    @trade = trade
    mail to: trade.email,
         reply_to: "vendors@tandemarbor.com",
         subject:  "Vendor Form Submission"
  end

end
