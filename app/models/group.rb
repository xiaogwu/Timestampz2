class Group < ActiveRecord::Base
  attr_accessible :name, :teacher

  has_many :student_groups
  has_many :students, through: :student_groups
end
