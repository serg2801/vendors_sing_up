ActiveAdmin.register Trade do

  config.clear_action_items!
  config.filters = false

  menu label: "Vendor"

  index :title => "Vendor" do
    title :my_title
    column :business_name
    column :email
    column :phone_number
    column :created_at

    actions defaults: false do |trade|
      link_to "View", admin_trade_path(trade)
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
      row :web_site_url_my
      row :web_site
      row :information
      panel 'Categories' do
        attributes_table_for trade.categories do
          rows :title
        end
      end
      panel 'Channels' do
        attributes_table_for trade.channels do
          rows :title
        end
      end
      panel 'Options' do
        attributes_table_for trade.options do
          rows :title
        end
      end
      row :created_at
      row :image do
        image_tag trade.image.url
      end
      row :image do
        link_to('download', "#{trade.image}", :download => 'filename')
      end
    end
  end

end
