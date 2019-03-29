# require_relative '../lib/models/artist.rb'
# require_relative '../lib/models/show.rb'
# require_relative '../lib/models/venue.rb'
# #
#
# Venue.destroy_all
# Artist.destroy_all

paramount = Venue.create(name: "Paramount Theatre", date: "2019-03-26", time: "20:00:00")
summit = Venue.create(name: "Summit Music Hall", date: "2019-03-26", time: "19:00:00")
larimer = Venue.create(name: "Larimer Lounge", date: "2019-03-26", time: "20:00:00")
bluebird = Venue.create(name: "Bluebird Theater", date: "2019-03-26", time: "19:00:00")
tennyson = Venue.create(name: "Tennyson's Tap", date: "2019-03-28", time: "22:00:00")
woods = Venue.create(name: "Woods Boss Brewing", date: "2019-03-28", time: "18:00:00")

dream = Artist.create(name: "Dream Theater", popularity: 0.056429, venue: "Paramount Theater")
boogie = Artist.create(name: "A Boogie Wit da Hoodie", popularity: 0.086217, venue: "Summit Music Hall")
mat = Artist.create(name: "Mat Kerekes, Jetty Bones, Jacob Sigman", popularity: 0.0019269, venue: "Larimer Lounge")
copeland = Artist.create(name: "Copeland, From Indian Lakes", popularity: 0.015775, venue: "Bluebird Theater")
vanilla = Artist.create(name: "The Vanilla Milkshakes", popularity: 0.000006, venue: "Tennyson's Tap")
youknew = Artist.create(name: "You Knew Me When", popularity: 0.000003, venue: "Woods Boss Brewing")
