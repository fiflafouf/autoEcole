class CreateLeconConduites < ActiveRecord::Migration
  def change
    create_table :lecon_conduites do |t|
      t.integer :id
      t.Date :date
      t.Time :heure
      t.integer :user_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
