class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :school, :null => false
      t.string :grade_level, :null => false
      t.string :homeroom_teacher

      t.timestamps
    end
  end
end
