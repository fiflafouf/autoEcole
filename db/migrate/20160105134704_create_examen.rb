class CreateExamen < ActiveRecord::Migration
  def change
    create_table :examen do |t|
      t.integer :id
      t.Date :dateExam
      t.string :type

      t.timestamps null: false
    end
  end
end
