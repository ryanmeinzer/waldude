# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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
Artist.create(name: "Stone Temple Pilot")

Stage.create(name: "Woogie")
Stage.create(name: "Stacks")
Stage.create(name: "Lightning")
Stage.create(name: "Thunder")
Stage.create(name: "Beacon")

Attendee.create(name: "Mike")
Attendee.create(name: "Susy") 
Attendee.create(name: "Mary") 
Attendee.create(name: "Billy") 
Attendee.create(name: "Milly") 
Attendee.create(name: "Cindy") 
Attendee.create(name: "Robin") 
Attendee.create(name: "Dave") 
Attendee.create(name: "Amanda") 
Attendee.create(name: "Joe") 

Location.create(color: "Red")
Location.create(color: "Aqua")
Location.create(color: "SaddleBrown")
Location.create(color: "DarkGreen")
Location.create(color: "Yellow")
Location.create(color: "Purple")
Location.create(color: "DarkBlue")
Location.create(color: "DeepPink")
Location.create(color: "DarkOrange")

10.times do
    Show.create(artist_id: Artist.all.sample.id, stage_id: Stage.all.sample.id, date_time: DateTime.now + (rand * 21))
end

150.times do
    Plan.create(attendee_id: Attendee.all.sample.id, show_id: Show.all.sample.id, location_id: Location.all.sample.id)
end