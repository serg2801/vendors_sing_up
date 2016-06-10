class Trade < ActiveRecord::Base

  belongs_to :user, :dependent => :destroy

  has_many :categories, :through =>  :trade_categories
  has_many :trade_categories, dependent: :destroy

  has_many :channels, :through =>  :trade_channels
  has_many :trade_channels, dependent: :destroy

  has_many :options, :through =>  :trade_options
  has_many :trade_options, dependent: :destroy

  has_many :information_trades, :dependent => :destroy

  validates :business_name, :greeting, :first_name, :last_name, :email, :phone_number, :address,
            :city, :state, :zipcode, :country, :web_site_url_my, presence:  true
  validates :phone_number, :numericality => {:only_integer => true}

  mount_uploader :image, ImageUploader

end
