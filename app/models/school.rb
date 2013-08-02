class School < ActiveRecord::Base
  attr_accessible :name

  has_many :day_classes
  has_many :students
  has_many :teachers

  def test_method
  	#jackie is awesome
  	self == self
  	#that line will always return true
  end
end
