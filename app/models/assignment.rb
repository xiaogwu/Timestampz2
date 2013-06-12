class Assignment < ActiveRecord::Base
  attr_accessible :due_date, :name

  has_many :student_assignments
  has_many :students, through: :student_assignments
  belongs_to :day_class
end
