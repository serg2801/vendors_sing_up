class CreateTradeChannels < ActiveRecord::Migration
  def change
    create_table :trade_channels do |t|

      t.integer :trade_id
      t.integer :chanel_id

      t.timestamps null: false
    end
  end
end
