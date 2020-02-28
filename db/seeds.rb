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

matt = User.create(name: "Matteo Ricci", drag_name: "Auntie Depressant", city_id: 1, house_id: nil)
bri = User.create(name: "Bri Turner", drag_name: "Amy Bipolar", city_id: 1, house_id: nil)
carl = User.create(name: "Carl Parm", drag_name: "Lady Footlocker", city_id: 1, house_id: nil)
paul = User.create(name: "Paul Kim", drag_name: "Mona Lott", city_id: 1, house_id: nil)
will = User.create(name: "Will Harris", drag_name: "Avery Goodlay", city_id: 1, house_id: nil)
yo = User.create(name: "Yo Park", drag_name: "Annie Mae", city_id: 1, house_id: nil)
ryan = User.create(name: "Ryan Wilson", drag_name: "Toyotathot", city_id: 1, house_id: nil)
lauren = User.create(name: "Lauren Yu", drag_name: "Sam O'Nella", city_id: 1, house_id: nil)
sonata = User.create(name: "Sonata Arrington", drag_name: "Sarah Tonin", city_id: 1, house_id: nil)
wesley = User.create(name: "Wesley Chen", drag_name: "Heather O'Sexual", city_id: 1, house_id: nil)
alan = User.create(name: "Alan Banks", drag_name: "Frida Slaves", city_id: 1, house_id: nil)

lips = Talent.create(name: "Lip-Syncing", description: "Master of Musical Mimicry")
makeup = Talent.create(name: "Makeup", description: "You Ever Seen a Mug This Beat?")
comedy = Talent.create(name: "Comedy", description: "Joan Rivers Could Never")
imperse = Talent.create(name: "Impersonation", description: "Literally Who is She??")
fashion = Talent.create(name: "Serving Looks", description: "All She Gotta Do is Show Up")

ut1 = UserTalent.create(user_id: matt.id, talent_id: lips.id)
ut2 = UserTalent.create(user_id: bri.id, talent_id: makeup.id)
ut3 = UserTalent.create(user_id: carl.id, talent_id: fashion.id)
ut4 = UserTalent.create(user_id: will.id, talent_id: imperse.id)

ed = House.create(name: "Edwards", description: "Belongs to Miss Gay Justin", mother: "Alyssa Edwards")
parm = House.create(name: "Parmesean", description: "Premo Italian Shit", mother: "Donatella Versace")