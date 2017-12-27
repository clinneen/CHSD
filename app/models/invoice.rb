class Invoice < ApplicationRecord
  belongs_to :customer
  belongs_to :user
  has_many :line_items
  has_many :products, :through => :line_items
end
