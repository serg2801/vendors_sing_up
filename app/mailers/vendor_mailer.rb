class VendorMailer < ApplicationMailer
  default from: "hello@tandemarbor.com"

  def signup_cinfirmation(vendor)
    @vendor = vendor
    # attachments["#{@vendor.image}"] = File.read("#{Rails.root}/public/#{@vendor.image}")
    mail to: "trade@tandemarbor.com", subject:  "Trade Form Submission " + "#{@vendor.business_name}"
  end
end
