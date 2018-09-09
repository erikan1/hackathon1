class Product < ApplicationRecord
  has_many :line_items

  validates :sku, :name, :dept, :quantity, presence: true
end
