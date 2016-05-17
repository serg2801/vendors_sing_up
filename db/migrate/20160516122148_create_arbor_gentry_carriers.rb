class CreateArborGentryCarriers < ActiveRecord::Migration
  def change
    create_table :arbor_gentry_carriers do |t|

      t.string :name
      t.references :board, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
