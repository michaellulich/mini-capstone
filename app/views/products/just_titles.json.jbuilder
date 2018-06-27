json.array! @products.each do |product|
  json.titles product.name
end