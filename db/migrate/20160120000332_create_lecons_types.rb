class CreateLeconsTypes < ActiveRecord::Migration
  def change
    create_table :lecons_types do |t|
      t.string :nom

      t.timestamps null: false
    end
  end
end
