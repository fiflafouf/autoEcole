class CreateFormules < ActiveRecord::Migration
  def change
    create_table :formules do |t|
      t.string :nom
      t.string :description
      t.integer :nbTickets
      t.float :puTicket
      t.float :prix

      t.timestamps null: false
    end
  end
end
