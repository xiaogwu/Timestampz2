class StudentDayClass < ActiveRecord::Base
  attr_accessible :day_class_id, :student_id

  belongs_to :students
  belongs_to :day_class
end
