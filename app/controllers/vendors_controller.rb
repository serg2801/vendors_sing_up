class VendorsController < ApplicationController

  def new
    @vendor = Vendor.new
  end

  def create
    params[:vendor][:phone_number] = params[:vendor][:phone_number].scan(/\d/).join('')
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      VendorMailer.signup_cinfirmation(@vendor).deliver
      VendorMailer.send_confirmation(@vendor).deliver
      redirect_to trade_success_path
    else
      render 'new'
    end
  end

  private
  def vendor_params
    params.require(:vendor).permit(:business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
                                   :suite, :city, :state, :zipcode, :country, :web_site_url, :information, :image,
                                   :certificate, :about_our_company, :describe_your_business, :tax_exempt, :dropship_e_commerce,
                                   :stocking_dealer, :non_stocking_dealer, :contract_details)
  end

end
