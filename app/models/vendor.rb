class Vendor < ActiveRecord::Base

  has_many :companies, :through =>  :vendor_companies
  has_many :vendor_companies, dependent: :destroy

  validates :business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
            :city, :state, :zipcode, :country, :web_site_url, presence:  true

  mount_uploader :image, ImageUploader

end
