class AddColumnsToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :inventory_integration_method_other, :text

    add_column :boards, :contact_other_title, :text
    add_column :boards, :contact_other_name, :text
    add_column :boards, :contact_other_phone, :text
    add_column :boards, :contact_other_email, :text
    add_column :boards, :contact_other_fax, :text
  end
end
