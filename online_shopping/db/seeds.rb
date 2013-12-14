# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#ebooks = Category.create!(:name => 'ebooks')


product = Product.create(name: 'Nokia s4', description: 'nokia', category_id: 1, price: 15000, image: 'not displayed' )

product_detail = ProductDetail.create( product_id: 1, unique_id: 2532)

bill_detail = BillDetail.create( product_detail_id: 2, bill_id: 1, product_id: 1)
bill_detail = BillDetail.create( product_detail_id: 3, bill_id: 1, product_id: 1)
bill_detail = BillDetail.create( product_detail_id: 4, bill_id: 1, product_id: 1)

product_detail = ProductDetail.create( product_id: 1, unique_id: 2533)
product_detail = ProductDetail.create( product_id: 1, unique_id: 2534)
product_detail = ProductDetail.create( product_id: 1, unique_id: 2535)