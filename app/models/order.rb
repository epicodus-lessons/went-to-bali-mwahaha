class Order < ApplicationRecord
  has_many :order_items, dependent: :destroy
  belongs_to :user, optional: true

  before_save :calculate_total

  def calculate_total
    self.total_price = order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  def finalize(user)
    self.user_id = user.id
    self.status = 2
    self.save
  end
end
