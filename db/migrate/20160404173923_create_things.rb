class CreateThings < ActiveRecord::Migration[5.2]
  def change
    create_table :things do |t|
      t.integer :creator_id
      t.string :title
      t.string :location
      t.string :description
      t.integer :price
      t.string :image_1
      t.string :image_2
      t.string :btc_qr
      t.string :website
      t.string :checkout_cc
      t.string :checkout_btc
      t.string :hashtag
      t.integer :view_count
      t.integer :age
      t.string :special_offer
      t.string :broadcast

      t.timestamps null: false
    end
  end
end
