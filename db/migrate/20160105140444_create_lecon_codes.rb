class CreateLeconCodes < ActiveRecord::Migration
  def change
    create_table :lecon_codes do |t|
      t.datetime :date
      t.time :heure

      t.timestamps null: false
    end
  end
end
