class AddGrantsAccessToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :grants_access, :boolean, default: false
  end
end
