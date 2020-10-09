class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :email
      t.string :location
      t.string :phone
      t.string :twitter
      t.string :facebook
      t.string :farmer_or_pirate
      t.string :logo
      t.string :wallpaper
      t.string :hashtag
      t.string :campaign
      t.string :crowdfund
      t.string :store
      t.integer :view_count
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
