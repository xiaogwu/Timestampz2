# == Schema Information
#
# Table name: groups
#
#  id         :integer          not null, primary key
#  teacher    :string(255)      not null
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Group < ActiveRecord::Base
  attr_accessible :name, :teacher, :grade_level

  has_many :student_groups
  has_many :students, through: :student_groups

  scope :by_teacher, order("teacher")
end
