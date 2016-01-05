class CreateAssisterLeconCodes < ActiveRecord::Migration
  def change
    create_table :assister_lecon_codes do |t|
      t.integer :lecon_code_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
