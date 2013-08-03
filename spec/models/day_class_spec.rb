require 'spec_helper'

describe DayClass do
  let(:day_class) { FactoryGirl.create(:day_class) }

  it { should have_many :student_day_classes }
  it { should have_many :assignments }
  it { should have_many :students }
  it { should belong_to :school }
  it { should belong_to :teacher }

  describe '#get_name' do
    it 'generates a class name' do
      day_class.get_name.should eq("Flintstone's 4th period Math")
    end
  end
end
