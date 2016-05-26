class AddCertificateToBoards < ActiveRecord::Migration
  def change
    add_column :boards, :certificate, :string
  end
end
