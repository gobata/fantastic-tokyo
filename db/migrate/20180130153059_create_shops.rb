class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false, default: ""
      t.string :tel
      t.string :zip_code
      t.integer :english_level
      t.integer :low_price
      t.integer :high_price
      t.decimal  :latitude,    precision: 9, scale: 6
      t.decimal  :longitude,   precision: 9, scale: 6
      t.string :url
      t.text :concept
      t.text :description
      t.string :address
      t.text :meta_keyword
      t.text :meta_title
      t.text :meta_description
      t.string :eng_name, null: false, default: ""
      t.text :eng_concept
      t.text :eng_description
      t.string :eng_address
      t.text :eng_meta_keyword
      t.text :eng_meta_title
      t.text :eng_meta_description
      t.timestamps
    end
  end
end
