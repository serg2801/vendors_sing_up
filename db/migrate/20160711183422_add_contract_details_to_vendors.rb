class AddContractDetailsToVendors < ActiveRecord::Migration
  def up
    add_column :vendors, :contract_details, :string
  end

  def down
    remove_column :vendors, :contract_details
  end
end
