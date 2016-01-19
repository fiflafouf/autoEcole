class RenameUserFields < ActiveRecord::Migration
  def change
    rename_column :users, :moniteurId, :user_id
  end
end