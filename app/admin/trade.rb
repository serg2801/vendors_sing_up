ActiveAdmin.register Trade do

  actions :all
  config.clear_action_items!
  config.filters = false
  form partial: 'form'
  menu label: "Vendor"

  index :title => "Vendor" do
    title :my_title
    column :business_name
    column :email
    column :phone_number
    column :created_at
    actions defaults: false do |trade|
      unless trade.grant_access
        link_to 'Grant Access', grant_access_admin_trades_path(trade)
      end

    end
    actions

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
        link_to('download', "#{trade.image}", :download => "#{trade.id}_vendor") unless trade.image_url.nil?
      end
      panel 'Vendor Agreement' do
        table_for trade.information_trades do
          column 'Show Vendor Agreement' do |at|
            link_to('Show Vendor Agreement', "#{at.vendor_agreement}")
          end
          column 'Download Vendor Agreement' do |at|
            link_to('Download', "#{at.vendor_agreement}", :download => "#{trade.business_name}_Vendor Agreement")
          end
        end
      end
    end
  end

  action_item 'New Vendor', only: :index do
    link_to 'New Vendor', new_admin_trade_path, method: :get
  end


  collection_action :grant_access, method: :get, title: 'Grant Access' do
    @trade = Trade.find(params[:format])
    o = [('a'..'z'), ('A'..'Z')].map { |i| i.to_a }.flatten
    password_string = (0...20).map { o[rand(o.length)] }.join
    @user = User.new({email: @trade.email, password: password_string, password_confirmation: password_string, pas_decrypt: encryption(password_string)})
    if @user.save
      @trade = Trade.find(params[:format])
      @trade.update_attributes(grant_access: true, user_id: @user.id)
      TradeMailer.create_user(@trade, @user).deliver
    end
    redirect_to admin_trades_path
  end

  controller do

    def create
      @trade = Trade.new(trade_params)
      if @trade.save
        redirect_to admin_trade_path(@trade.id)
      else
        render 'new'
      end
    end

    private
    def trade_params
      params.require(:trade).permit!
    end

    def encryption(password)
      begin
        cipher = OpenSSL::Cipher.new('AES-128-ECB')
        cipher.encrypt()
        cipher.key = ENV["key_encrypt_decrypt"]
        crypt = cipher.update(password) + cipher.final()
        crypt_string = (Base64.encode64(crypt))
        return crypt_string
      rescue Exception => exc
        puts ("Message for the encryption log file for message #{password} = #{exc.message}")
      end
    end

  end


end
