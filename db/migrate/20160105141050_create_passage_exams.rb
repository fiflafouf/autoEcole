class CreatePassageExams < ActiveRecord::Migration
  def change
    create_table :passage_exams do |t|
      t.integer :examan_id
      t.integer :user_id
      t.float :resultat

      t.timestamps null: false
    end
  end
end
