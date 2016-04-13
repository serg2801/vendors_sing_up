class Option < ActiveRecord::Base
  has_many :trade_options, dependent: :destroy
  has_many :trades, through: :trade_options
end
