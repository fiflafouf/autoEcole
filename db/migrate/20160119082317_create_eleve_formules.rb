class CreateEleveFormules < ActiveRecord::Migration
  def change
    create_table :eleve_formules do |t|
      t.integer :eleveId
      t.integer :formuleId

      t.timestamps null: false
    end
  end
end
