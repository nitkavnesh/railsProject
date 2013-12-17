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

#product = Product.create(name: 'Nokia s4', description: 'nokia', category_id: 1, price: 15000, image_file_name: 'nexus')
#product = Product.create(name: 'Nokia 105', description: 'nokia', category_id: 1, price: 15000, image_file_name: 'nokia 105')
#product = Product.create(name: 'Nokia 108', description: 'nokia', category_id: 1, price: 15000, image_file_name: 'nokia 108')
#product = Product.create(name: 'Nokia 111', description: 'nokia', category_id: 1, price: 15000, image_file_name: 'nokia 111')

product_detail = ProductDetail.create( product_id: 1, unique_id: 2532)

bill_detail = BillDetail.create( product_detail_id: 2, bill_id: 1, product_id: 1)
bill_detail = BillDetail.create( product_detail_id: 3, bill_id: 1, product_id: 1)
bill_detail = BillDetail.create( product_detail_id: 4, bill_id: 1, product_id: 1)

product_detail = ProductDetail.create( product_id: 1, unique_id: 2533)
product_detail = ProductDetail.create( product_id: 1, unique_id: 2534)
product_detail = ProductDetail.create( product_id: 1, unique_id: 2535)
bill_detail = BillDetail.create( product_detail_id: 2, bill_id: 1, product_id: 1)
bill_detail = BillDetail.create( product_detail_id: 3, bill_id: 1, product_id: 1)
bill_detail = BillDetail.create( product_detail_id: 4, bill_id: 1, product_id: 1)

#product_detail = ProductDetail.create( product_id: 1, unique_id: 2533)
#product_detail = ProductDetail.create( product_id: 1, unique_id: 2534)
#product_detail = ProductDetail.create( product_id: 1, unique_id: 2535)
#product_detail = ProductDetail.create( product_id: 1, unique_id: 2532)

product_detail = ProductDetail.create( product_id: 1, unique_id: 2533)
product_detail = ProductDetail.create( product_id: 1, unique_id: 2534)
product_detail = ProductDetail.create( product_id: 1, unique_id: 2535)