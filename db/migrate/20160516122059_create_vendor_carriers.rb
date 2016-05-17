class CreateVendorCarriers < ActiveRecord::Migration
  def change
    create_table :vendor_carriers do |t|

      t.string :name
      t.references :broad, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
