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
Message.destroy_all

centreville = City.create(name: "Centreville, VA")
reston = City.create(name: "Reston, VA")
bethesda = City.create(name: "Bethesda, MD")
rockville = City.create(name: "Rockville, MD")
washington = City.create(name: "Washington, D.C.")

depressant = House.create(name: "Depressant", description: "A house formed by the world-renowned queen Auntie Depressant; this group of queens only wear blonde wigs because reasons.", mother_id: nil)
parm = House.create(name: "Parmesan", description: "This house was created by the great drag queen Lady Footlocker, whose real name is Carl Parm. Only queens who have cheese-themed names are accepted into this house.", mother_id: nil)
mama = House.create(name: "Yo Mama", description: "This house is for queens who like smack talk. Founded by the queen Annie Mae, whose real name is Yo, puns about 'yo mama' are not only tolerated but encouraged.", mother_id:
    nil)
banks = House.create(name: "Banks", description: "The House of Banks is about one thing: robbing banks. These queens don't even perform, they just rob a bunch of banks.", mother_id: nil)

matt = User.create(name: "Matteo Ricci", drag_name: "Auntie Depressant", city: washington, house: depressant, username: "matt", password: "girl", admin: 3, bio: "Matteo is an exciting tradesperson who suffers from a severe phobia of dolls.")
bri = User.create(name: "Bri Turner", drag_name: "Amy Bipolar", city: centreville, house: nil, username: "blt", password: "girl", admin: 3, bio: "Bri is a friendly government politician who is obsessed with the murder of her sister Tammy, six years ago.")
carl = User.create(name: "Carl Parm", drag_name: "Lady Footlocker", city: bethesda, house: parm, bio: "Carl Parm is a 30-year-old lab assistant who enjoys drone photography, eating and stealing candy from babies.", admin: 2, username: 'carl', password: 'girl')
paul = User.create(name: "Paul Kim", drag_name: "Hugh Jass", city: reston, house: nil, bio: "Paul is a smart former senior politician who enjoys attending museums.", username: 'paul', password: "girl")
will = User.create(name: "Will Harris", drag_name: "Avery Goodlay", city: rockville, house: nil, bio: "Will is a gentle scientific researcher who is obsessed with the murder of his mother Ashleigh, two years ago.", username: 'will', password: "girl")
yo = User.create(name: "Yo Park", drag_name: "Annie Mae", city: centreville, house: mama, bio: "Yo is a former lawyer with a serious addiction to shopping.", admin: 2, username: 'yo', password: "girl")
ryan = User.create(name: "Ryan Wilson", drag_name: "Toyotathot", city: bethesda, house: nil, bio: "Ryan is a giving student who enjoys cycling.", username: 'ryan', password: "girl")
lauren = User.create(name: "Lauren Yu", drag_name: "Cleopatra-with-a-K", city: reston, house: nil, bio: "Lauren is a murderous scientific researcher, traumatised by her mother leaving when she was one.", username: 'lauren', password: "girl")
sonata = User.create(name: "Sonata Arrington", drag_name: "Sarah Tonin", city: washington, house: nil, bio: "Sonata is a loveable teenager who enjoys working on cars", username: 'sonata', password: "girl")
wesley = User.create(name: "Wesley Chen", drag_name: "Heather O'Sexual", city: washington, house: nil, bio: "Wesley is an inspiring senior politician who enjoys watching sports.", username: 'wesley', password: "girl")
alan = User.create(name: "Alan Banks", drag_name: "Frida Slaves", city: reston, house: banks, bio: "Alan is a local activist with a serious addiction to strawberry bonbons.", admin: 2, username: 'alan', password: "girl")

depressant.update(mother_id: matt.id)
parm.update(mother_id: carl.id)
mama.update(mother_id: yo.id)
banks.update(mother_id: alan.id)


lips = Talent.create(name: "Lip-Syncing", description: "Master of Musical Mimicry")
makeup = Talent.create(name: "Makeup", description: "You Ever Seen a Mug This Beat?")
comedy = Talent.create(name: "Comedy", description: "Joan Rivers Could Never")
imperse = Talent.create(name: "Impersonation", description: "Literally Who is She??")
fashion = Talent.create(name: "Serving Looks", description: "All She Gotta Do is Show Up")

heymatteo = Message.create(recipient_id: matt.id, sender_id: bri.id, subject: "Hey Matteo", body: "Did you know that I like sweaters?")
himatteo = Message.create(recipient_id: matt.id, sender_id: bri.id, subject: "Oh no!!!", body: "Gordon Ramsay has the flu")
soon = Message.create(recipient_id: matt.id, sender_id: bri.id, subject: "Did you hear?", body: "I've never killed a man with my bare hands. But soon.")
heybri = Message.create(recipient_id: bri.id, sender_id: matt.id, subject: "Hey Bri", body: "Did you know that I hate sweaters?")

