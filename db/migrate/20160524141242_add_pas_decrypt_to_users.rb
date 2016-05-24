class AddPasDecryptToUsers < ActiveRecord::Migration
  def change
    add_column :users, :pas_decrypt, :string
  end
end
