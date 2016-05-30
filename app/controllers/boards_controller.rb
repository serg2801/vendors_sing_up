class BoardsController < ApplicationController

  def show
    @board = Board.find(params[:id])
  end

  def edit
    @user = User.find(current_user.id)
    @board = @user.board
  end

  def new
    @grouped_options = {
        'FURNITURE - SEATING' => ['SOFAS & LOVESEATS', 'SECTIONALS', 'SLEEPERS & DAYBEDS', 'ACCENT CHAIRS', 'DINING CHAIRS', 'DESK CHAIRS', 'CHAISES, SETTEES', 'BENCHES, OTTOMANS & POUFS', 'BAR & COUNTER', 'STOOLS'],
        'FURNITURE - SHELVING & CABINETS' => ['ARMOIRES & CABINETS', 'BAR STORAGE & CARTS', 'SIDEBOARDS & HUTCHES', 'MEDIA CONSOLES', 'SHELVES & BOOKCASES'],
        'FURNITURE - TABLES' => ['DINING TABLES', 'BAR & COUNTER TABLES', 'COCKTAIL & COFFEE TABLES', 'CONSOLE TABLES', 'SIDE TABLES', 'TRUNKS', 'DESKS'],
        'FURNITURE - BEDROOM FURNITURE' => ['BED FRAMES', 'HEADBOARDS', 'MATTRESSES', 'NIGHTSTANDS', 'DRESSERS'],
        'FURNITURE - BATH FURNITURE' => ['ÉTAGÈRES & CABINETS', 'MIRRORS', 'VANITIES & SINKS', 'TUBS'],
        'FURNITURE - OFFICE FURNITURE' => ['DESKS', 'CHAIRS', 'OFFICE STORAGE'],
        'FURNITURE - OUTDOOR FURNITURE' => ['SOFAS & LOVESEATS', 'SECTIONALS', 'LOUNGERS', 'ACCENT CHAIRS', 'COFFEE TABLES', 'DINING CHAIRS', 'DINING & BAR TABLES', 'STOOLS'],

        'KITCHEN & TABLETOP - APPLIANCES' => ['REFRIGERATOR', 'OVENS', 'COOKTOPS', 'RANGES', 'DISHWASHERS', 'HOODS', 'FITTINGS'],
        'KITCHEN & TABLETOP - ACCESSORIES' => ['STEP STOOLS + LADDERS', 'KNOBS & HANDLES', 'STORAGE', 'TRASHCANS'],
        'KITCHEN & TABLETOP - COOKWARE, BAKEWARE & TOOLS' => ['CUTLERY & PREP', 'BAKEWARE', 'POTS & PANS', 'COOKING TOOLS', 'CANISTERS & JARS', 'DISH TOWELS, APRONS & MITTS', 'GOURMET'],
        'KITCHEN & TABLETOP - TABLETOP' => ['PLATES', 'BOWLS', 'MUGS & CUPS', 'STEMWARE', 'GLASSWARE', 'FLATWARE'],
        'KITCHEN & TABLETOP - SERVEWARE' => ['PLATTERS & TRAYS', 'COFFEE & TEA', 'SALT & PEPPER', 'SERVING BOWLS', 'SERVING UTENSILS', 'PITCHERS & JUGS', 'CHEESE BOARDS'],
        'KITCHEN & TABLETOP - ENTERTAINING' => ['COCKTAIL PLATES', 'COASTERS', 'CHARGERS', 'SERVING TRAYS', 'ACCESSORIES'],
        'KITCHEN & TABLETOP - TABLE LINENS' => ['NAPKINS', 'PLACEMATS', 'TABLECLOTHS & RUNNERS', 'NAPKIN RINGS'],
        'KITCHEN & TABLETOP - BARWARE' => ['COCKTAIL GLASSES', 'PITCHERS & DECANTERS', 'BAR ACCESSORIES'],

        'BED & BATH - BED LINENS' => ['DUVET COVERS & SHAMS', 'SHEETING', 'QUILTS & COVERLETS'],
        'BED & BATH - BEDDING ACCESSORIES' => ['THROWS & BLANKETS', 'PILLOW INSERTS', 'DECORATIVE PILLOWS BATH LINENS', 'TOWELS', 'BATH RUGS', 'SHOWER CURTAINS'],
        'BED & BATH - BATH FITTINGS' => ['WALL MOUNTED HARDWARE', 'VANITIES & WALL SHELVES', 'KNOBS, HOOKS & PULLS', 'FAUCETS & FITTINGS'],
        'BED & BATH - BATH ACCESSORIES' => ['COUNTERTOP ACCESSORIES', 'COUNTERTOP MIRRORS', 'BATH STORAGE', 'SHOWER BASKETS', 'SOAP & LOTION COLLECTIONS'],

        'LIGHTING - CEILING' => ['CHANDELIERS', 'PENDANTS', 'FLUSHMOUNTS', 'CEILING FANS'],
        'LIGHTING - LAMPS' => ['FLOOR LAMPS', 'TABLE LAMPS'],
        'LIGHTING - WALL' => ['WALL SCONCES', 'BATH SCONCES', 'PICTURE LIGHTS'],
        'LIGHTING - OUTDOOR' => ['OUTDOOR PENDANTS', 'OUTDOOR SCONCES', 'OUTDOOR FLUSHMOUNTS', 'STRING LIGHTS'],
        'LIGHTING - LIGHTING ACCESSORIES' => ['SHADES', 'LIGHTBULBS', 'SWITCH PLATES', 'LIT DÉCOR'],

        'RUGS - RUGS BY STYLE' => ['HIDES, SKINS & LEATHER', 'NATURAL FIBER, SISAL & TEXTURE', 'PATTERN', 'SHAG', 'SOLIDS', 'SILK', 'FLATWEAVE', 'ANTIQUE & VINTAGE', 'RUG ACCESSORIES'],

        'DÉCOR - OBJECTS' => ['BOOKENDS', 'BOOKS', 'CANDLES & CANDLE HOLDERS', 'CLOCKS', 'FRAMES', 'LETTERS & NUMBERS', 'OBJECTS', 'VASES', 'VESSELS & TRAYS'],
        'DÉCOR - MIRRORS' => ['FLOOR MIRRORS', 'WALL MIRRORS'],
        'DÉCOR - WINDOWS' => ['DRAPERY', 'SHADES', 'BLINDS', 'HARDWARE'],
        'DÉCOR - OFFICE & STORAGE' => ['BASKETS & TOTES', 'SHELVING', 'DESK ACCESSORIES', 'BOXES'],
        'DÉCOR - WALL DÉCOR' => ['ARTWORK', 'WALL CARVINGS/PLAQUES', 'DISPLAY SHELVES'],
        'DÉCOR - HEARTH' => ['SCREENS', 'TOOLS & ACCESSORIES'],
        'DÉCOR - PILLOWS & THROWS' => ['PILLOWS', 'PILLOW INSERTS', 'THROWS'],
        'DÉCOR - SMALL FURNITURE' => ['BAR CARTS', 'COAT RACKS', 'LUGGAGE RACKS', 'LADDERS & SCREENS', 'WALL SHELVING'],
        'DÉCOR - HARDWARE' => ['DOORBELLS', 'HINGES & LATCHES', 'HOOKS', 'KNOBS', 'KNOCKERS', 'MAILBOXES', 'NUMBERS', 'PULLS, HANDLES & KNOBS', 'REGISTER COVERS', 'SWITCH PLATES'],
        'DÉCOR - FABRIC BY THE YARD' => ['FABRIC BY THE YARD'],

        'OUTDOOR - OUTDOOR FURNITURE' => ['SOFAS & LOVESEATS', 'SECTIONALS', 'LOUNGERS', 'ACCENT CHAIRS', 'COFFEE TABLES', 'DINING CHAIRS', 'DINING & BAR TABLES', 'STOOLS'],
        'OUTDOOR - OUTDOOR DÉCOR' => ['FOUNTAINS', 'GARDEN OBJECTS', 'TOPIARIES', 'URNS & PEDESTALS'],
        'OUTDOOR - FIRE & HEAT' => ['FIREPLACE & PITS', 'FIRE ACCESSORIES', 'OUTDOOR HEATERS', 'FIRE & HEAT COVERS', 'GRILLS & OVENS'],
        'OUTDOOR - OUTDOOR LIGHTING' => ['PENDANTS', 'SCONCES', 'FLUSHMOUNTS', 'STRING LIGHTS'],
        'OUTDOOR - UMBRELLAS' => ['UMBRELLAS', 'UMBRELLA STANDS', 'UMBRELLA COVERS'],
        'OUTDOOR - OUTDOOR ACCESSORIES' => ['COVERS', 'CUSHIONS', 'PILLOWS', 'PLANTERS', 'DOORMATS'],
    }
    @board = Board.new
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      BoardMailer.signup_confirmation(@board).deliver
      BoardMailer.send_confirmation(@board).deliver
      redirect_to board_success_path
    else
      render 'new'
    end
  end

  def update
    @user = User.find(current_user.id)
    @board = @user.board
    if @board.update_attributes(board_params)
      BoardMailer.update_board(@board).deliver
      redirect_to board_success_update_path
    else
      render :edit
    end
  end

  private
  def board_params
    params.require(:board).permit(:legal_business_name, :company_name, :vendor_based_in, :vendor_based_in_other, :main_address_street, :main_address_unit, :main_address_city, :main_address_state,
                                  :main_address_zip, :main_address_country, :primary_business_name, :primary_business_phone, :primary_business_email, :primary_business_fax, :finance_name, :finance_phone,
                                  :finance_email, :finance_fax, :purchase_orders_name, :purchase_orders_phone, :purchase_orders_email, :purchase_orders_fax, :inventory_name, :inventory_phone,
                                  :inventory_email, :inventory_fax, :returns_name, :returns_phone, :returns_email, :returns_fax, :product_information_name, :product_information_phone,
                                  :product_information_email, :product_information_fax, :customer_service_name, :customer_service_phone, :customer_service_email, :customer_service_fax,
                                  :inventory_integration_method, :integrations_contact_name, :integrations_contact_phone, :integrations_contact_email, :integrations_contact_fax, :upc_marketing,
                                  :upc_ticketing_contact_name, :upc_ticketing_contact_phone, :upc_ticketing_contact_email, :upc_ticketing_contact_fax, :returns_contact_name, :returns_contact_phone,
                                  :returns_contact_email, :returns_contact_fax, :returns_address_street, :returns_address_unit, :returns_address_city, :returns_address_state, :returns_address_zip,
                                  :returns_address_country, :preferred_shipping_method, :protocol_for_freight_shipments, :multiple_warehouses, :shipping_from_multiple_warehouses,
                                  :transportation_and_shipment_section, :ship_alone_items, :average_inventory_levels, :typical_shipping_lead_time_count, :typical_shipping_lead_time_day,
                                  :average_inventory_replenishment_time_other, :method, :method_other, :frequency, :frequency_other, :credit_card, :wire_transfer, :ach, :check_by_mail, :pay_pal,
                                  :bitcoin, :costs_fees, :if_so_costs_fees, :requirements_for_purchase_orders, :if_yes_requirements_for_purchase_orders, :imap_pricing, :return_policy, :merchandising,
                                  :average_inventory_replenishment_time_count, :average_inventory_replenishment_time_day, :costs_fees_radio, :w_9_form, :inventory_integration_method_other,
                                  :contact_other_title, :contact_other_name, :contact_other_phone, :contact_other_email, :contact_other_fax, :certificate,
                                  brands_attributes: [:id, :name, :board_id, :_destroy],
                                  vendor_carriers_attributes: [:id, :name, :board_id, :_destroy],
                                  arbor_gentry_carriers_attributes: [:id, :name, :board_id, :_destroy],
                                  product_types_attributes: [:id, :name, :board_id, :_destroy],
                                  transportation_and_shipments_attributes: [:id, :board_id, :ship_from_information_unit, :ship_from_information_city, :ship_from_information_state, :ship_from_information_zip,
                                                                            :ship_from_information_country, :transportation_contact_name, :transportation_contact_phone, :transportation_contact_email,
                                                                            :transportation_contact_fax, :ship_from_information_street, :_destroy])
  end

end