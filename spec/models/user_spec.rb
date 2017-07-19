require 'rails_helper'

describe User do
  it { should have_many(:orders) }


  describe '#previous_orders' do
    it 'should return the previous orders' do
      order_item = FactoryGirl.create(:order_item)
      expect(order_item.order.user.previous_orders.first.id).to eq (order_item.order.id)
    end
  end
end