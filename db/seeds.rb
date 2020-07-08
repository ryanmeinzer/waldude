# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Artist.destroy_all
Show.destroy_all 
Stage.destroy_all 
Attendee.destroy_all 
Plan.destroy_all 
Location.destroy_all 

Artist.create(name: "GRiZ")
Artist.create(name: "Nas")
Artist.create(name: "Metallica")
Artist.create(name: "Ke$ha")
Artist.create(name: "Mobb Deep")
Artist.create(name: "Talib Kweli")
Artist.create(name: "Smashing Pumkins")
Artist.create(name: "Radiohead")
Artist.create(name: "Wu Tang Clan")
Artist.create(name: "Stone Temple Pilots")

Stage.create(name: "Woogie")
Stage.create(name: "Stacks")
Stage.create(name: "Lightning")
Stage.create(name: "Thunder")
Stage.create(name: "Beacon")

100.times do
    Attendee.create(name: Faker::Name.unique.first_name)
end

Location.create(color: "Red", name: "Red")
Location.create(color: "Aqua", name: "Aqua")
Location.create(color: "SaddleBrown", name: "Brown")
Location.create(color: "DarkGreen", name: "Green")
Location.create(color: "Yellow", name: "Yellow")
Location.create(color: "Purple", name: "Purple")
Location.create(color: "DarkBlue", name: "Blue")
Location.create(color: "DeepPink", name: "Pink")
Location.create(color: "DarkOrange", name: "Orange")

15.times do
    Show.create(artist_id: Artist.all.sample.id, stage_id: Stage.all.sample.id, date_time: DateTime.now + (rand * 21))
end

500.times do
    Plan.create(attendee_id: Attendee.all.sample.id, show_id: Show.all.sample.id, location_id: Location.all.sample.id)
end