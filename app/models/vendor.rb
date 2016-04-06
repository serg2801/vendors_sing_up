class Vendor < ActiveRecord::Base

  has_many :companies, :through =>  :vendor_companies
  has_many :vendor_companies, dependent: :destroy

end
