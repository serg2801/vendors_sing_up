class ChangeColumnDesigner < ActiveRecord::Migration
  def up
    remove_column :vendors, :designer
    add_column :vendors, :describe_your_business, :text
  end

  def down
    add_column :vendors, :designer, :boolean, default: false
    remove_column :vendors, :describe_your_business
  end
end
