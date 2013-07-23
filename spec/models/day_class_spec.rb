require 'spec_helper'

describe DayClass do

  it { should have_many :student_day_classes }
  it { should have_many :assignments }
  it { should have_many :students }
  it { should belong_to :school }
  it { should belong_to :teacher }

end
