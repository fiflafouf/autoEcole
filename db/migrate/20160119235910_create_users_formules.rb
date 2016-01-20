class CreateUsersFormules < ActiveRecord::Migration
  def change
    create_table :users_formules do |t|
      t.integer :user_id
      t.integer :formule_id

      t.timestamps null: false
    end
  end
end
