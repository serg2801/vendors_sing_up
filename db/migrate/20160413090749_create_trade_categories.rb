class CreateTradeCategories < ActiveRecord::Migration
  def change
    create_table :trade_categories do |t|

      t.integer :trade_id
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
