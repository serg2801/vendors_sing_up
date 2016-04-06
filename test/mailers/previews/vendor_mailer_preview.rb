# Preview all emails at http://localhost:3000/rails/mailers/vendor_mailer
class VendorMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/vendor_mailer/signup_cinfirmation
  def signup_cinfirmation
    VendorMailer.signup_cinfirmation
  end

end
