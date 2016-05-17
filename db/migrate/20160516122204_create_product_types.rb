class CreateProductTypes < ActiveRecord::Migration
  def change
    create_table :product_types do |t|

      t.string :name
      t.references :broad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
