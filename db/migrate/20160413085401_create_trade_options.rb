class CreateTradeOptions < ActiveRecord::Migration
  def change
    create_table :trade_options do |t|

      t.integer :trade_id
      t.integer :option_id

      t.timestamps null: false
    end
  end
end
