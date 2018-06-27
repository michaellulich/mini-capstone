Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/first_product_url" => "products#first_product_method"
  get "/all_products_url" => "products#all_products_method"
  get "/all_titles_url" => "products#display_all_titles"
  get "/third_product_url" => "products#third_product_method"
end
