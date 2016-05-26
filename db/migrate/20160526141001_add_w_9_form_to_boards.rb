class AddW9FormToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :w_9_form, :text
  end
end
