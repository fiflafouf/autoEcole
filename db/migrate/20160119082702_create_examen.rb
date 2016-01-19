class CreateExamen < ActiveRecord::Migration
  def change
    create_table :examen do |t|
      t.string :type
      t.datetime :date

      t.timestamps null: false
    end
  end
end
