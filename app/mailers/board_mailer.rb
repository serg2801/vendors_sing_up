class BoardMailer < ApplicationMailer
  default from: "donotreply@tandemarbor.com"

  def signup_confirmation(board)
    @board = board
    attachments["#{@board.w_9_form}"] = File.read("#{Rails.root}/public/#{@board.w_9_form}") unless @board.w_9_form_url.nil?
    attachments["#{@board.certificate}"] = File.read("#{Rails.root}/public/#{@board.certificate}") unless @board.certificate_url.nil?
     mail to: "trade@tandemarbor.com", subject:  "Vendor Onboarding Form " + "#{@board.legal_business_name}"
  end

  def send_confirmation(board)
    @board = board
    mail to: board.primary_business_email,
         reply_to: "vendors@tandemarbor.com",
         subject:  "Vendor Onboarding Form"
  end

  def create_user(board, user)
    @board = board
    @user = user
    @user_pas = decryption(user.pas_decrypt)
    mail to: @user.email,
    #      reply_to: "vendors@tandemarbor.com",
         subject:  "Vendor Onboarding Form"
  end

  def update_board(board)
    @board = board
    attachments["#{@board.w_9_form}"] = File.read("#{Rails.root}/public/#{@board.w_9_form}") unless @board.w_9_form_url.nil?
    attachments["#{@board.certificate}"] = File.read("#{Rails.root}/public/#{@board.certificate}") unless @board.certificate_url.nil?
    mail to: "trade@tandemarbor.com",
         # reply_to: "vendors@tandemarbor.com",
         subject:  "Update Vendor Onboarding Form" + "#{@board.legal_business_name}"
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
