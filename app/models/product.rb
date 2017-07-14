class Product < ApplicationRecord
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  has_many :order_items, dependent: :destroy
end
