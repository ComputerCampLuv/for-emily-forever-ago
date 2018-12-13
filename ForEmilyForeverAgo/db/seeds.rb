# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products = [
  { name: 'Partial Livery', price: 5.5},
  { name: 'Full Livery', price: 9.5},
  { name: 'Rapid Bedding', price: 6},
  { name: 'Straw Pellets', price: 6},
  { name: 'Theraplate', price: 20},
  { name: 'Lesson', price: 20},
  { name: 'Farrier', price: 30},
  { name: 'Veterinary', price: 50}]

  products.each do |product|
    Product.create(name: product[:name], price: product[:price])
  end

date = Date.new(2018, 9, 23)

1.upto(14) do |days|

  currentOrder = Order.create( {ordered_on: date + days})

  productCount = 1 + rand(4)

  productCount.times do 
    productIndex = 1 + rand(Product.count)
    productQty = 1 + rand(2)
    product = Product.find(productIndex)
    LineItem.create( { order: currentOrder, product: product, unit_price: product[:price], quantity: productQty })
  end

end