class AddCostsFeesRadioToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :costs_fees_radio, :string
  end
end
