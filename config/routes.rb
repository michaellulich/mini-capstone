Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/first_product_url" => "products#first_product_method"
  get "/all_products_url" => "products#all_products_method"
  get "/third_product_url" => "products#third_product_method"
  get "/product_by_id/:id" => "products#get_by_id_method"
  get "/product_by_id" => "products#get_by_id_method"
end

