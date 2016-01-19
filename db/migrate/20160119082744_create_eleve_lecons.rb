class CreateEleveLecons < ActiveRecord::Migration
  def change
    create_table :eleve_lecons do |t|
      t.integer :eleveId
      t.integer :leconId

      t.timestamps null: false
    end
  end
end
