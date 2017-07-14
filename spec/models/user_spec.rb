require 'rails_helper'

describe User do
  it { should have_many(:orders) }


  describe '#previous_orders' do
    it 'should return the previous orders' do
      byebug
    end
  end
end