class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :teacher, :null => false
      t.string :name, :null => false

      t.timestamps
    end
  end
end
