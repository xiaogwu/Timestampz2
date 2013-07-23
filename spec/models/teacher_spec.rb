require 'spec_helper'

describe Teacher do

  it { should have_many :day_classes }
  it { should belong_to :school }
end
