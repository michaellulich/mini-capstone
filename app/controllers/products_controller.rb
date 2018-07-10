class ProductsController < ApplicationController
  
  def index
    @products = Product.all.order(:id)
    search_terms = params[:q]
    
    if search_terms
      @products = @products.where("name ILIKE ?", "%#{search_terms}%")
    end

    @products = @products.order(:id => :asc)

    render "index.json.jbuilder"
  end

  def show
    id_input = params["id"]
    @product = Product.find_by(id: id_input)
    render "show.json.jbuilder"

  end

  def create
    @product = Product.new(
        name: params[:name],
        price: params[:price],
        description: params[:description],
        in_stock: params[:in_stock],
        supplier_id: 1,
        user_id: current_user.id
      )
    if @product.save
      image = Image.new(img_url: params[:image_url], product_id: @product.id)
      image.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
    
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description
    @product.in_stock = params[:in_stock] || @product.in_stock
    
    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render json: {message: "Product successfully destroyed."}
  end

end
