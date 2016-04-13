class Channel < ActiveRecord::Base
  has_many :trade_channels, dependent: :destroy
  has_many :trades, through: :trade_channels
end
