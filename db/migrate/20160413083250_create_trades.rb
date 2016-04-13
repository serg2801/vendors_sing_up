class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|

      t.string  :business_name
      t.string  :greeting
      t.string  :first_name
      t.string  :last_name
      t.string  :email
      t.string  :phone_number
      t.string  :address
      t.string  :suite
      t.string  :city
      t.string  :state
      t.string  :zipcode
      t.string  :country
      t.string  :web_site_url_my
      t.string  :web_site
      t.text    :information

      t.timestamps null: false
    end
  end
end
