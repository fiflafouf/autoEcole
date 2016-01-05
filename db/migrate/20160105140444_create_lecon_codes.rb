class CreateLeconCodes < ActiveRecord::Migration
  def change
    create_table :lecon_codes do |t|
      t.integer :id
      t.Date :date
      t.Time :heure

      t.timestamps null: false
    end
  end
end
