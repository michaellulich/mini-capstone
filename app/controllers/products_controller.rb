class ProductsController < ApplicationController
  def first_product_method
    @product = Product.third
    render "first_album.json.jbuilder"
  end

  def all_products_method
    @products = Product.all
    render "all_products.json.jbuilder"
  end
end
