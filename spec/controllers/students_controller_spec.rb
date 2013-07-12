require 'spec_helper'

describe StudentsController do
  describe '#new' do
    it 'returns success' do
      get('new')
      response.should be_successful
    end
  end
end
