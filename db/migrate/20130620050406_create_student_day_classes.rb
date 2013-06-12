class CreateStudentDayClasses < ActiveRecord::Migration
  def change
    create_table :student_day_classes do |t|
      t.integer :student_id
      t.integer :day_class_id

      t.timestamps
    end
  end
end
