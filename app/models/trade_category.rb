class TradeCategory < ActiveRecord::Base
  belongs_to :trade
  belongs_to :category
end
