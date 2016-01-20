class CreateExamens < ActiveRecord::Migration
  def change
    create_table :examens do |t|
      t.string :type
      t.datetime :date

      t.timestamps null: false
    end
  end
end
