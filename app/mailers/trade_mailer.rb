class TradeMailer < ApplicationMailer
  default from: "hello@tandemarbor.com"

  def signup_confirmation(trade)
    @trade = trade
    # attachments["#{@vendor.image}"] = File.read("#{Rails.root}/public/#{@vendor.image}")
    mail to: "trade@tandemarbor.com", subject:  "Vendor Form Submission " + "#{@trade.business_name}"
  end
end
