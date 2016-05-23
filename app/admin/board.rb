ActiveAdmin.register Board do
  permit_params :legal_business_name, :company_name, :vendor_based_in, :vendor_based_in_other, :main_address_street, :main_address_unit, :main_address_city, :main_address_state,
                :main_address_zip, :main_address_country, :primary_business_name, :primary_business_phone, :primary_business_email, :primary_business_fax, :finance_name, :finance_phone,
                :finance_email, :finance_fax, :purchase_orders_name, :purchase_orders_phone, :purchase_orders_email, :purchase_orders_fax, :inventory_name, :inventory_phone,
                :inventory_email, :inventory_fax, :returns_name, :returns_phone, :returns_email, :returns_fax, :product_information_name, :product_information_phone,
                :product_information_email, :product_information_fax, :customer_service_name, :customer_service_phone, :customer_service_email, :customer_service_fax,
                :inventory_integration_method, :integrations_contact_name, :integrations_contact_phone, :integrations_contact_email, :integrations_contact_fax, :upc_marketing,
                :upc_ticketing_contact_name, :upc_ticketing_contact_phone, :upc_ticketing_contact_email,:upc_ticketing_contact_fax, :returns_contact_name, :returns_contact_phone,
                :returns_contact_email, :returns_contact_fax, :returns_address_street, :returns_address_unit, :returns_address_city, :returns_address_state, :returns_address_zip,
                :returns_address_country, :preferred_shipping_method, :protocol_for_freight_shipments, :multiple_warehouses, :shipping_from_multiple_warehouses,
                :transportation_and_shipment_section, :ship_alone_items, :average_inventory_levels, :typical_shipping_lead_time_count, :typical_shipping_lead_time_day,
                :average_inventory_replenishment_time_other, :method, :method_other, :frequency, :frequency_other, :credit_card, :wire_transfer, :ach, :check_by_mail, :pay_pal,
                :bitcoin, :costs_fees, :if_so_costs_fees, :requirements_for_purchase_orders, :if_yes_requirements_for_purchase_orders, :imap_pricing, :return_policy, :merchandising,
                :average_inventory_replenishment_time_count, :average_inventory_replenishment_time_day, brands_attributes: [:id, :name, :board_id, :_destroy],
                vendor_carriers_attributes: [:id, :name, :board_id, :_destroy], arbor_gentry_carriers_attributes: [:id, :name, :board_id, :_destroy], product_types_attributes: [:id, :name, :board_id, :_destroy],
                transportation_and_shipments_attributes: [:id, :board_id, :ship_from_information_unit, :ship_from_information_city, :ship_from_information_state, :ship_from_information_zip,
                                                          :ship_from_information_country, :transportation_contact_name, :transportation_contact_phone, :transportation_contact_email,
                                                          :transportation_contact_fax, :ship_from_information_street, :_destroy]

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
