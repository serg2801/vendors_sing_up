class AddUserIdAndGrantAccessToTrades < ActiveRecord::Migration
  def change
    add_column :trades, :user_id, :integer
    add_column :trades, :grant_access, :boolean, default: false
  end
end
