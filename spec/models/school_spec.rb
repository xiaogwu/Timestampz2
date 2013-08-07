require 'spec_helper'

describe School do

  it { should have_many :day_classes }
  it { should have_many :students }
  it { should have_many :teachers }
  it { should validate_presence_of :name }

end
