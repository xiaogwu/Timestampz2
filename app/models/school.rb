class School < ActiveRecord::Base
  attr_accessible :name

  has_many :classes
  has_many :students
  has_many :teachers
end
