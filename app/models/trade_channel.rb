class TradeChannel < ActiveRecord::Base
  belongs_to :trade
  belongs_to :channel
end
