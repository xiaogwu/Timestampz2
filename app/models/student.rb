class Student < ActiveRecord::Base
  attr_accessible :grade, :homeroom_teacher, :first_name, :last_name, :school

  has_many :student_groups
  has_many :groups, through: :student_groups
  has_many :student_assignments
  has_many :assignments, through: :student_assignments
  has_many :student_day_classes
  has_many :day_classes, through: :student_day_classes
end
