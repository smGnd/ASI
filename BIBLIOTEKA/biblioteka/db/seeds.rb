# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 


Book.create author: "Sapkowski", title: "Wiedźmin", isbn: "14126432924", price: "250"
Book.create author: "Lem", title: "Dzienniki gwiazdowe", isbn: "134234", price: "1000"
Book.create author: "Masterton", title: "", isbn: "194519151906", price: "1500"
