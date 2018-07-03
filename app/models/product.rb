class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, priceresence: true
  validates :description, length: {in: 10..500} 

  def is_discounted
    if price <= 20
      discounted = true
    else 
      discounted = false
    end
  end

  def tax
    tax_val = price * 0.09
  end

  def total
    total = price + tax
  end

end
