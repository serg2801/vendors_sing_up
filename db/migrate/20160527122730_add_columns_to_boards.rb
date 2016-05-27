class AddColumnsToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :inventory_integration_method_other, :string

    add_column :boards, :contact_other_title, :string
    add_column :boards, :contact_other_name, :string
    add_column :boards, :contact_other_phone, :string
    add_column :boards, :contact_other_email, :string
    add_column :boards, :contact_other_fax, :string
  end
end
