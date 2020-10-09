class AddBtcAddressToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :btc_address, :string
  end
end
