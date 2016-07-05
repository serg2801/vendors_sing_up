class AddAboutOurCompanyAndDesignerAndTaxExemptToVendors < ActiveRecord::Migration
  def up
    add_column :vendors, :about_our_company, :text
    add_column :vendors, :designer, :boolean, default: false
    add_column :vendors, :tax_exempt, :boolean, default: false
  end

  def down
    remove_column :vendors, :about_our_company
    remove_column :vendors, :designer
    remove_column :vendors, :tax_exempt
  end
end
