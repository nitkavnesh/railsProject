# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(:name => 'avnesh', :phone_no => '7204467210', :email => 'avnesh@neevtech.com', :encrypted_password => 'avnesh123', :sign_in_count => 4)