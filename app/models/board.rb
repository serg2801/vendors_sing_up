class Board < ActiveRecord::Base
  has_many :brands
  has_many :transportation_and_shipments
  has_many :vendor_carriers
  has_many :arbor_gentry_carriers
  has_many :product_types

  belongs_to :user, :dependent => :destroy

  mount_uploader :w_9_form, ImageUploader
  mount_uploader :certificate, ImageUploader


  accepts_nested_attributes_for :brands, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :transportation_and_shipments, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :vendor_carriers, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :arbor_gentry_carriers, reject_if: :all_blank, allow_destroy: true
  accepts_nested_attributes_for :product_types, reject_if: :all_blank, allow_destroy: true

  validates :primary_business_email, presence:  true

  def display_name
    # "#{first_name} #{last_name}"
  end
end