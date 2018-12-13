# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# items = [
#   { description: 'Partial Livery', base_price: 5.5},
#   { description: 'Full Livery', base_price: 9.5},
#   { description: 'Rapid Bedding', base_price: 6},
#   { description: 'Straw Pellets', base_price: 6},
#   { description: 'Theraplate', base_price: 20},
#   { description: 'Lesson', base_price: 20},
#   { description: 'Farrier', base_price: 30},
#   { description: 'Veterinary', base_price: 50}]

#   items.each do |product|
#     Item.create(description: product[:description], base_price: product[:base_price])
#   end

# date = Date.new(2018, 9, 23)

# 1.upto(14) do |days|

#   currentOrder = Order.create( {ordered_at: date + days})

#   productCount = 1 + rand(4)

#   productCount.times do 
#     productIndex = 1 + rand(Item.count)
#     productQty = 1 + rand(2)
#     product = Item.find(productIndex)
#     Line.create( { order: currentOrder, item: product, unit_price: product[:base_price], quantity: productQty })
#   end

# end