class VendorMailer < ApplicationMailer
  default from: 'donotreply@tandemarbor.com'

  def signup_cinfirmation(vendor)
    @vendor = vendor
    attachments["#{@vendor.image}"] = File.read("#{Rails.root}/public/#{@vendor.image}") unless @vendor.image_url.nil?
    mail to: 'trade@tandemarbor.com', subject:  'Trade Form Submission ' + "#{@vendor.business_name}"
  end

  def send_confirmation(vendor)
    @vendor = vendor
    mail to: vendor.email,
         reply_to: 'trade@tandemarbor.com',
         subject:  'Trade Form Submission'
  end

end
