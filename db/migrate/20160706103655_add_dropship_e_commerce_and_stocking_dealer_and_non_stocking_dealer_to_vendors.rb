class AddDropshipECommerceAndStockingDealerAndNonStockingDealerToVendors < ActiveRecord::Migration
  def up
    add_column :vendors, :dropship_e_commerce, :boolean, default: false
    add_column :vendors, :stocking_dealer, :boolean, default: false
    add_column :vendors, :non_stocking_dealer, :boolean, default: false
  end
  def down
    remove_column :vendors, :dropship_e_commerce, :boolean
    remove_column :vendors, :stocking_dealer, :boolean
    remove_column :vendors, :non_stocking_dealer, :boolean
  end
end