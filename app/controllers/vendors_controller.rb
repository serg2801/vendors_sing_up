class VendorsController < ApplicationController

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    @companies = params[:vendor][:company_ids]
    if @companies.nil?
      flash[:warning] = "Please, indicate the options that describe your business!"
      render 'new'
    else
      @companies.each do |company|
        @company = Company.find(company)
        @vendor.companies << @company
      end
      if @vendor.save
        VendorMailer.signup_cinfirmation(@vendor).deliver
        VendorMailer.send_confirmation(@vendor).deliver
        redirect_to trade_success_path
      else
        render 'new'
      end
    end
  end

  private
  def vendor_params
    params.require(:vendor).permit(:business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
                                   :suite, :city, :state, :zipcode, :country, :web_site_url, :information, :image, :certificate)
  end

end
