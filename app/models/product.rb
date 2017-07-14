class Product < ApplicationRecord
  has_attached_file :image
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image, presence: true
  
  has_many :order_items, dependent: :destroy
end
