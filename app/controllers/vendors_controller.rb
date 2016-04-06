class VendorsController < ApplicationController

  def show
    @vendor = Vendor.find(params[:id])
  end

  def new
    @vendor = Vendor.new
  end

  def create
    @vendor = Vendor.new(vendor_params)
    @companies = params[:vendor][:company_ids]
    @companies.each do |company|
      @company = Company.find(company)
       @vendor.companies << @company
    end
    if @vendor.save
      VendorMailer.signup_cinfirmation(@vendor).deliver
      redirect_to @vendor, notice: "Successfully!!!"
    else
      render 'new'
    end
  end

  private
  def vendor_params
    params.require(:vendor).permit(:business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
                                   :suite, :city, :state, :zipcode, :country, :web_site_url, :information, :image)
  end

end
