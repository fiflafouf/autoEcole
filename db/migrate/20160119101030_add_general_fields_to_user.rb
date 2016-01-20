class AddGeneralFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :surnom, :string
    add_column :users, :addr, :string
    add_column :users, :cp, :integer
    add_column :users, :ville, :string
    add_column :users, :dateNaiss, :date
    add_column :users, :telFixe, :integer
    add_column :users, :telMobile, :integer
    add_column :users, :moniteurId, :integer
    add_column :users, :voiture, :string
    
  end
end
