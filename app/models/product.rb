class Product < ApplicationRecord
  has_many :line_items
  has_many :invoices, :through => :line_items
end
