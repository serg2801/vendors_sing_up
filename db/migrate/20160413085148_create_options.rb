class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
