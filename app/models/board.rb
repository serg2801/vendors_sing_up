class Board < ActiveRecord::Base
  has_many :brands
  has_many :transportation_and_shipments
  has_many :vendor_carriers
  has_many :arbor_gentry_carriers
  has_many :product_types
end
