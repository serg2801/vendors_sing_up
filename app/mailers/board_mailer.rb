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
end
