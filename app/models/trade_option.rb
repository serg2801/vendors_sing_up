class TradeOption < ActiveRecord::Base
  belongs_to :trade
  belongs_to :option
end
