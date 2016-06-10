class InformationTrade < ActiveRecord::Base
  belongs_to :trade
  mount_uploader :vendor_agreement, ImageUploader

  validates :vendor_agreement, presence:  true
end
