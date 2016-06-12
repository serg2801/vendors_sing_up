class TradeMailer < ApplicationMailer
  default from: "donotreply@tandemarbor.com"

  def signup_confirmation(trade)
    @trade = trade
    attachments["#{@trade.image}"] = File.read("#{Rails.root}/public/#{@trade.image}") unless @trade.image_url.nil?
    mail to: "trade@tandemarbor.com", subject:  "Vendor Form Submission " + "#{@trade.business_name}"
  end

  def send_confirmation(trade)
    @trade = trade
    mail to: trade.email,
         reply_to: "vendors@tandemarbor.com",
         subject:  "Vendor Form Submission"
  end

  def create_user(trade, user)
    @trade = trade
    @user = user
    @user_pas = decryption(user.pas_decrypt)
    mail to: @user.email,
         #      reply_to: "vendors@tandemarbor.com",
         subject:  "[LOGIN] Tandem Arbor Vendors"
  end

  def update_trade(trade)
    @trade = trade
    @trade_options = Trade.find(trade.id).options
    @trade_categories = Trade.find(trade.id).categories
    @trade_channels = Trade.find(trade.id).channels
    attachments["#{@trade.image}"] = File.read("#{Rails.root}/public/#{@trade.image}") unless @trade.image_url.nil?
    mail to: "trade@tandemarbor.com",
         # reply_to: "vendors@tandemarbor.com",
         subject:  "Update Vendor Onboarding Form" + "#{@trade.business_name}"
  end

  private

  def decryption(password)
    cipher = OpenSSL::Cipher.new('AES-128-ECB')
    cipher.decrypt()
    cipher.key = ENV["key_encrypt_decrypt"]
    tempkey = Base64.decode64(password)
    crypt = cipher.update(tempkey)
    crypt << cipher.final()
    return crypt
  rescue Exception => exc
    puts ("Message for the decryption log file for message #{password} = #{exc.message}")
  end

end
