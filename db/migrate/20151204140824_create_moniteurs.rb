class CreateMoniteurs < ActiveRecord::Migration
  def change
    create_table :moniteurs do |t|
      t.integer :num_moniteur
      t.Car :voiture
      t.string :surnom
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :telephone

      t.timestamps null: false
    end
  end
end
