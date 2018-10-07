# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
fruits = ['Mango', 'Pineapple', 'Passion fruit', 'Dragonfruit']
fruits.each{|fruit| Fruit.create(name: fruit, description: "I am a delicious #{fruit}.")}
