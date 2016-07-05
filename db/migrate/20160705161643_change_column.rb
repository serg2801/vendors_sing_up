class ChangeColumn < ActiveRecord::Migration
  def up
    change_column :vendors, :designer, :text
    change_column :vendors, :tax_exempt, :text
  end

  def down
    change_column :vendors, :designer, :boolean, default: false
    change_column :vendors, :tax_exempt, :boolean, default: false
  end
end
