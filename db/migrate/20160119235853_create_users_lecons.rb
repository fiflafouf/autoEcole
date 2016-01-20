class CreateUsersLecons < ActiveRecord::Migration
  def change
    create_table :users_lecons do |t|
      t.integer :user_id
      t.integer :lecon_id

      t.timestamps null: false
    end
  end
end
