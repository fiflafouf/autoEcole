class CreateUsersExamens < ActiveRecord::Migration
  def change
    create_table :users_examens do |t|
      t.integer :examen_id
      t.integer :user_id
      t.integer :passer
      t.integer :score

      t.timestamps null: false
    end
  end
end
