# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#ebooks = Category.create!(:name => 'ebooks')

category = Category.create(name: 'Electronics')
category = Category.create(name: 'Books')
category = Category.create(name: 'Games')
category = Category.create(name: 'Nokia',parent_id: 1)
category = Category.create(name: 'Micromax',parent_id: 1)
category = Category.create(name: 'Samsung',parent_id: 1)
category = Category.create(name: 'HTC',parent_id: 1)
category = Category.create(name: 'Children Books',parent_id: 2)
category = Category.create(name: 'Music Books',parent_id: 2)
category = Category.create(name: 'Indoor Games',parent_id: 3)
category = Category.create(name: 'outdoor Games',parent_id: 3)


product = Product.create(name: 'Nokia 520', description: 'nokia', category_id: 4,price: 7000,image: 'not displyed')
product = Product.create(name: 'Nokia 620', description: 'nokia', category_id: 4, price: 12000, image: 'not displayed' )
product = Product.create(name: 'Nokia 720', description: 'nokia', category_id: 4, price: 20000, image: 'not displayed' )

product = Product.create(name: 'One Fish, Two Fish, Red Fish', description: 'Children Book', category_id: 8,price: 200,image: 'not displyed')
product = Product.create(name: 'Dr. SeussS Pocket Box', description: 'children book', category_id: 8,price: 250,image: 'not displyed')
product = Product.create(name: 'Hitz Of Jagjit', description: 'Music Book', category_id: 9,price: 100,image: 'not displyed')
product = Product.create(name: 'Karaoke, Film Songs', description: 'Music Book', category_id: 9,price: 60,image: 'not displyed')

product = Product.create(name: 'Nivia Digital Chess Clock', description: 'Indoor games', category_id: 10,price: 2000,image: 'not displyed')
product = Product.create(name: 'Chessbazaar Magnetic Drawer Fitted Chess Board', description: 'Indoor Games', category_id: 10,price: 2500,image: 'not displyed')
product = Product.create(name: 'Celestron Land and Sky', description: 'Outdoor Game', category_id: 11,price: 200,image: 'not displyed')
product = Product.create(name: 'Celestron UpClose G2', description: 'Outdoor Game', category_id: 11,price: 2000,image: 'not displyed')

