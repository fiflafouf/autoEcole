class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :num_voiture
      t.string :immatriculation
      t.string :marque

      t.timestamps null: false
    end
  end
end
