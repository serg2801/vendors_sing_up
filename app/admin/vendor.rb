ActiveAdmin.register Vendor do

  config.clear_action_items!
  config.filters = false

  menu label: "Trade"

  index :title => "Trade" do
    title :my_title
    column :business_name
    column :email
    column :phone_number
    column :created_at

    actions defaults: false do |vendor|
      link_to "View", admin_vendor_path(vendor)
    end

  end

  show do
    attributes_table do
      row :business_name
      row :greeting
      row :first_name
      row :last_name
      row :email
      row :phone_number
      row :address
      row :suite
      row :city
      row :state
      row :zipcode
      row :country
      row :web_site_url
      row :certificate
      row :about_our_company
      # row :designer
      row :tax_exempt
      row :information
      panel 'Companies' do
        attributes_table_for vendor.companies do
          rows :title
        end
      end
      row :dropship_e_commerce
      row :stocking_dealer
      row :non_stocking_dealer
      row :created_at
      row :image do
        image_tag vendor.image.url
      end
      row :image do
        link_to('download', "#{vendor.image}", :download => "#{vendor.id}_trade") unless vendor.image_url.nil?
      end
    end
  end


end
