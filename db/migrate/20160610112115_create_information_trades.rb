class CreateInformationTrades < ActiveRecord::Migration
  def up
    create_table :information_trades do |t|
      t.text :vendor_agreement
      t.integer :trade_id
      t.timestamps null: false
    end
  end

  def down
    drop_table :information_trades
  end
end
