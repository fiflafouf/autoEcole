class RenameTablesAndAddAssociations < ActiveRecord::Migration
  def change
    rename_table :eleve_examen, :eleves_examens
    rename_column :eleves_examens, :examenId, :examen_id
    rename_column :eleves_examens, :eleveId, :eleve_id
    
    rename_table :eleve_formules, :eleves_formules
    rename_column :eleves_formules, :eleveId, :eleve_id
    rename_column :eleves_formules, :formuleId, :formule_id
    
    rename_table :eleve_lecons, :eleves_lecons
    rename_column :eleves_lecons, :eleveId, :eleve_id
    rename_column :eleves_lecons, :leconId, :lecon_id
    
    rename_table :examen, :examens
    
    rename_table :lecon_types, :lecons_types
    rename_column :lecons_types, :name, :nom
    
    rename_column :users, :voiture, :voiture_id
    
  end
end
