class CreateAdvertisements < ActiveRecord::Migration
  def change
    create_table :advertisements do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.string :town
      t.string :curse_type
      t.decimal :price
      t.text :bio

      t.timestamps
    end
  end
end
