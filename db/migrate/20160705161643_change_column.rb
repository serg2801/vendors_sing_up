class ChangeColumn < ActiveRecord::Migration
  def up
    change_column :vendors, :designer, :text, default: nil
    change_column :vendors, :tax_exempt, :text, default: nil
  end

  def down
    change_column :vendors, :designer, :boolean, default: false
    change_column :vendors, :tax_exempt, :boolean, default: false
  end
end
