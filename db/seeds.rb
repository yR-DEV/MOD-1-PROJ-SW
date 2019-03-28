require_relative '../lib/models/artist.rb'
require_relative '../lib/models/show.rb'
require_relative '../lib/models/venue.rb'
#
#Venue = artist date time
Venue.create(name: "Paramount Theatre", date: "2019-03-26", time: "20:00:00")
Venue.create(name: "Summit Music Hall", date: "2019-03-26", time: "19:00:00")
Venue.create(name: "Larimer Lounge", date: "2019-03-26", time: "20:00:00")
Venue.create(name: "Bluebird Theater", date: "2019-03-26", time: "19:00:00")

#artists
Artist.create(name: "Dream Theater", popularity: 0.056429, venue: "Paramount Theater")
Artist.create(name: "A Boogie Wit da Hoodie", popularity: 0.086217, venue: "Summit Music Hall")
Artist.create(name: "Mat Kerekes, Jetty Bones, Jacob Sigman", popularity: 0.0019269, venue: "Larimer Lounge")
Artist.create(name: "Copeland, From Indian Lakes", popularity: 0.015775, venue: "Bluebird Theater")
