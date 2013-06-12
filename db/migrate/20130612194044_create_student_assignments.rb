class CreateStudentAssignments < ActiveRecord::Migration
  def change
    create_table :student_assignments do |t|
      t.integer :student_id
      t.integer :assignment_id
      t.datetime :completion_date
      t.string :comment

      t.timestamps
    end
  end
end
