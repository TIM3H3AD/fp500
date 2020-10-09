class AddStreetNameToTrees < ActiveRecord::Migration[5.2]
  def change
    add_column :trees, :street_name, :string
  end
end
