class ProductsController < ApplicationController
  def first_product_method
    @hello = Product.first_album
    render "json.first_album.jbuilder"
  end
end
