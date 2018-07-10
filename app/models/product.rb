class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :price, presence: true
  validates :price, numericality: {greater_than: 0}
  validates :description, presence: true
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

  belongs_to :supplier
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  has_many :images
  # def images
  #   Image.where(product_id: id)
  # end

  has_many :orders



  def images 
    Image.where(product_id: id)
  end

  def image_urls
    images.map {|image| image.url}
  end

end
