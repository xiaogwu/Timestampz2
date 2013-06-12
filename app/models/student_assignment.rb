class StudentAssignment < ActiveRecord::Base
  attr_accessible :assignment_id, :completed, :student_id

  belongs_to :student
  belongs_to :assignment
end