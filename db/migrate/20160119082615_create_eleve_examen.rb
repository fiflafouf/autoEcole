class CreateEleveExamen < ActiveRecord::Migration
  def change
    create_table :eleve_examen do |t|
      t.integer :examenId
      t.integer :eleveId
      t.integer :passer
      t.integer :score

      t.timestamps null: false
    end
  end
end
