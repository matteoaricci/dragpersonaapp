# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#### Drag Yourself ####

User.destroy_all
City.destroy_all
House.destroy_all
Talent.destroy_all
UserTalent.destroy_all

centreville = City.create(name: "Centreville, VA")
reston = City.create(name: "Reston, VA")
bethesda = City.create(name: "Bethesda, MD")
rockville = City.create(name: "Rockville, MD")
washington = City.create(name: "Washington, D.C.")

matt = User.create(name: "Matteo Ricci", drag_name: "Auntie Depressant", city: washington, house: nil, username: "matt", password: "girl", admin: 3)
bri = User.create(name: "Bri Turner", drag_name: "Amy Bipolar", city: centreville, house: nil, username: "blt", password: "girl", admin: 3)
# carl = User.create(name: "Carl Parm", drag_name: "Lady Footlocker", city: bethesda, house: ed)
# paul = User.create(name: "Paul Kim", drag_name: "Mona Lott", city: reston, house: matteoshouse)
# will = User.create(name: "Will Harris", drag_name: "Avery Goodlay", city: rockville, house: parm)
# yo = User.create(name: "Yo Park", drag_name: "Annie Mae", city: centreville, house: ed)
# ryan = User.create(name: "Ryan Wilson", drag_name: "Toyotathot", city: bethesda, house: matteoshouse)
# lauren = User.create(name: "Lauren Yu", drag_name: "Cleopatra with a K", city: reston, house: parm)
# sonata = User.create(name: "Sonata Arrington", drag_name: "Sarah Tonin", city: washington, house: nil)
# wesley = User.create(name: "Wesley Chen", drag_name: "Heather O'Sexual", city: washington, house: matteoshouse)
# alan = User.create(name: "Alan Banks", drag_name: "Frida Slaves", city: reston, house: parm)

lips = Talent.create(name: "Lip-Syncing", description: "Master of Musical Mimicry")
makeup = Talent.create(name: "Makeup", description: "You Ever Seen a Mug This Beat?")
comedy = Talent.create(name: "Comedy", description: "Joan Rivers Could Never")
imperse = Talent.create(name: "Impersonation", description: "Literally Who is She??")
fashion = Talent.create(name: "Serving Looks", description: "All She Gotta Do is Show Up")


