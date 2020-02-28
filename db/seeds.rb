# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
City.destroy_all
House.destroy_all
Talent.destroy_all
UserTalent.destroy_all

matt = User.create(name: "Matteo Ricci", drag_name: "Auntie Depressant", city_id: 1, house_id: 1)
bri = User.create(name: "Bri Turner", drag_name: "Amy Bipolar", city_id: 1, house_id: 1)
carl = User.create(name: "Carl Parm", drag_name: "Lady Footlocker", city_id: 1, house_id: 1)
paul = User.create(name: "Paul Kim", drag_name: "Mona Lott", city_id: 1, house_id: 1)
will = User.create(name: "Will Harris", drag_name: "Avery Goodlay", city_id: 1, house_id: 1)
yo = User.create(name: "Yo Park", drag_name: "Annie Mae", city_id: 1, house_id: 1)
ryan = User.create(name: "Ryan Wilson", drag_name: "Toyotathot", city_id: 1, house_id: 1)
lauren = User.create(name: "Lauren Yu", drag_name: "Sam O'Nella", city_id: 1, house_id: 1)
sonata = User.create(name: "Sonata Arrington", drag_name: "Sarah Tonin", city_id: 1, house_id: 1)
wesley = User.create(name: "Wesley Chen", drag_name: "Heather O'Sexual", city_id: 1, house_id: 1)
alan = User.create(name: "Alan Banks", drag_name: "Frida Slaves", city_id: 1, house_id: 1)
