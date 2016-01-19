class CreateExamen < ActiveRecord::Migration
  def change
    create_table :examen do |t|
      t.datetime :dateExam
      t.string :type

      t.timestamps null: false
    end
  end
end
