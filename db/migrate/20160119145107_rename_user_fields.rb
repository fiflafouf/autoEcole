class RenameUserFields < ActiveRecord::Migration
  def change
    rename_column :users, :moniteurId, :user_id
    rename_column :users, :voiture, :voiture_id
  end
end