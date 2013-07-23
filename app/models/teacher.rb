class Teacher < ActiveRecord::Base

  has_many :day_classes
  belongs_to :school
end
