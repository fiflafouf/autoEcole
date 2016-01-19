class RenameTablesLinkedToUser < ActiveRecord::Migration
  def change
    rename_table :eleves_examens, :users_examens
    rename_column :users_examens, :eleve_id, :user_id
    
    rename_table :eleves_formules, :users_formules
    rename_column :users_formules, :eleve_id, :user_id
    
    rename_table :eleves_lecons, :users_lecons
    rename_column :users_lecons, :eleve_id, :user_id
  end
end
