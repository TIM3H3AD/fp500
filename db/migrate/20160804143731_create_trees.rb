class CreateTrees < ActiveRecord::Migration[5.2]
  def change
    create_table :trees do |t|
      t.string :owner_name
      t.string :adress
      t.integer :zip_code
      t.string :owner_phone
      t.integer :current_estimate
      t.integer :actual_cost
      t.text :message
      t.string :company_name
      t.string :company_contact
      t.string :company_phone

      t.timestamps null: false
    end
  end
end
