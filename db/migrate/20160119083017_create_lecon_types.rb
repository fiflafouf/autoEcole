class CreateLeconTypes < ActiveRecord::Migration
  def change
    create_table :lecon_types do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
