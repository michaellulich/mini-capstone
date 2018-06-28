class ProductsController < ApplicationController
  def first_product_method
    @product = Product.third
    render "first_album.json.jbuilder"
  end

  def third_product_method
    @product = Product.find_by(id: 3)
    render "first_album.json.jbuilder"
  end

  def all_products_method
    @products = Product.all
    render "all_products.json.jbuilder"
  end

  def get_by_id_method
    id_input = params["id"]
    @product = Product.find_by(id: id_input)
    render "first_album.json.jbuilder"
  end


end
