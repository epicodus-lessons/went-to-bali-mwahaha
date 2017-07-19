require 'rails_helper'

describe Order do
  it { should have_many(:order_items) }
  it { should belong_to(:user) }


  describe '#previous_orders' do
    it '#finalize' do
      order_item = FactoryGirl.create(:order_item)
      order_item.order.finalize(order_item.order.user)
      expect(order_item.order.status).to eq 2
    end
  end
end