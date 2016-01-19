class CreateVoitures < ActiveRecord::Migration
  def change
    create_table :voitures do |t|
      t.integer :immatriculation
      t.integer :km
      t.string :modele
      t.string :marque

      t.timestamps null: false
    end
  end
end
