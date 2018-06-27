# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product = Product.new({name: "Station to Station", price: 19.99, image_url: "https://upload.wikimedia.org/wikipedia/en/9/97/Station_to_Station_cover.jpg", description: "David Bowie's 10th studio album."})
product.save

product = Product.new({name: "Pet Sounds", price: 29.99, image_url: "https://upload.wikimedia.org/wikipedia/en/b/bb/PetSoundsCover.jpg", description: "The Beach Boy's 11th studio album."})
product.save

product = Product.new({name: "Your Arsenal", price: 15.99, image_url: "https://upload.wikimedia.org/wikipedia/en/4/40/Your_Aresenal_album_cover.jpg", description: "Morrissey's 3rd studio album."})
product.save