class Product < ApplicationRecord
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
