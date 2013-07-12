require 'spec_helper'

describe Student do

  it { should have_many :student_groups }
  it { should have_many :groups }
  it { should have_many :student_assignments }
  it { should have_many :assignments }
  it { should have_many :student_day_classes }
  it { should have_many :day_classes }

  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :school }
  it { should validate_presence_of :grade_level }
end
