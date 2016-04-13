class Category < ActiveRecord::Base
  has_many :trade_categories, dependent: :destroy
  has_many :trades, through: :trade_categories
end
