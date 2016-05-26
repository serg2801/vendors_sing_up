class AddCertificateToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :certificate, :text
  end
end
