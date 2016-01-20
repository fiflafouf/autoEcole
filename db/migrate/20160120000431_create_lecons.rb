class CreateLecons < ActiveRecord::Migration
  def change
    create_table :lecons do |t|
      t.integer :lecons_type_id
      t.datetime :date
      t.time :heure

      t.timestamps null: false
    end
  end
end
