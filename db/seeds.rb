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


washington = City.create(name: 'Washington, D.C.')
edwards = House.create(name: "House of Edwards", description: "A house", mother: "A person")

matt = User.create!(name: "Matteo Ricci", drag_name: "Auntie Depressant", house: edwards, city: washington)
bri = User.create!(name: "Bri Turner", drag_name: "Amy Bipolar", house: edwards, city: washington)
carl = User.create!(name: "Carl Parm", drag_name: "Lady Footlocker", house: edwards, city: washington)
paul = User.create!(name: "Paul Kim", drag_name: "Mona Lott", house: edwards, city: washington)
will = User.create!(name: "Will Harris", drag_name: "Avery Goodlay", house: edwards, city: washington)
yo = User.create!(name: "Yo Lastname", drag_name: "Annie Mae", house: edwards, city: washington)
ryan = User.create!(name: "Ryan Wilson", drag_name: "Toyotathot", house: edwards, city: washington)
lauren = User.create!(name: "Lauren Yu", drag_name: "Sam O'Nella", house: edwards, city: washington)
sonata = User.create!(name: "Sonata Arrington", drag_name: "Sarah Tonin", house: edwards, city: washington)
wesley = User.create!(name: "Wesley Chen", drag_name: "Heather O'Sexual", house: edwards, city: washington)
alan = User.create!(name: "Alan Banks", drag_name: "Frida Slaves", house: edwards, city: washington)
valentin = User.create!(name: "Valentin Placido", drag_name: "Jack the Stripper", house: edwards, city: washington)
jason = User.create!(name: "Jason Park", drag_name: "Robin Parks", house: edwards, city: washington)

