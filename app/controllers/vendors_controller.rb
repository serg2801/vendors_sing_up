class VendorsController < ApplicationController

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
      redirect_to @vendor
    else
      render 'new'
    end
  end

  private
  def vendor_params
    params.require(:vendor).permit(:business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
                                   :suite, :city, :state, :zipcode, :country, :web_site_url, :information)
  end

end
