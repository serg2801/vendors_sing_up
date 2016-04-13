class AddImageToTrades < ActiveRecord::Migration
  def change
    add_column :trades, :image, :string
  end
end
