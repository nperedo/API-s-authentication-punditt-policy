require 'rails_helper'


RSpec.describe Order, type: :model do
  it 'can create an order with the default factory' do
    order = create(:order)
    expect(order).to be_valid
  end

  it 'expects an Order to be invalid if item_name is nil' do
    order = create(:order)
    order.item_name = nil 
    expect(order).to be_invalid
  end

  describe "scopes" do
    describe '.cancelled' do
      it 'returns only cancelled orders' do
        cancelled_order = create(:order, cancelled: true)
        active_order = create(:order)

        result = Order.cancelled
        expect(result).to include(cancelled_order)
        expect(result).not_to include(active_order)
      end 
    end 
  end

  describe '.active' do 
    it 'returns only active orders' do 
      active_order = create(:order)
      cancelled_order = create(:order, cancelled: true)

      result = Order.active
      expect(result).to include(active_order)
      expect(result).not_to include(cancelled_order)
    end 
  end

  describe '#cancel!' do
    it 'updates order cancel to be true' do 
      order = create(:order, cancelled: false)

      result = order.cancel!
      expect(result).to eq(order.cancelled == true)
    end  
  end 

  describe '#uncancel!' do 
    it 'updates cancel to be false' do 
      order = create(:order, cancelled: true)

      result = order.uncancel!
      expect(result).to eq(order.cancelled == false)
    end 
  end

end

