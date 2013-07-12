class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :teacher_first_name, :null => false
      t.string :teacher_last_name, :null => false
      t.string :name, :null => false
      t.string :grade_level

      t.timestamps
    end
  end
end
