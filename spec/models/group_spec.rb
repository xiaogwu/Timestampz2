# == Schema Information
#
# Table name: groups
#
#  id                 :integer          not null, primary key
#  name               :string(255)      not null
#  grade_level        :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  teacher_first_name :string(255)      not null
#  teacher_last_name  :string(255)      not null
#

require 'spec_helper'

describe Group do
  it { should have_many :student_groups }
  it { should have_many :students }

  it { should validate_presence_of :name}
  it { should validate_presence_of :teacher_first_name}
  it { should validate_presence_of :teacher_last_name}
end
