json.array! @products.each do|product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.tax product.tax
  json.total_price product.total
  json.image_url product.image_url
  json.description product.description
  json.discounted product.is_discounted
end

