class CreateFormules < ActiveRecord::Migration
  def change
    create_table :formules do |t|
      t.integer :id
      t.string :description
      t.integer :price
      t.integer :nbTicket
      t.integer :priceTicket
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
