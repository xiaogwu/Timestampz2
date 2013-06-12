class DayClass < ActiveRecord::Base
  attr_accessible :period, :school, :subject, :teacher

  has_many :student_day_classes
  has_many :students, through: :student_day_class
  has_many :assignments
end
