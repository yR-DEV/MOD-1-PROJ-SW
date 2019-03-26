require_relative '../lib/models/artist.rb'
require_relative '../lib/models/show.rb'
require_relative '../lib/models/venue.rb'

#Venue = artist date time
Venue.new(name: "Paramount Theatre-colorado", date: "2019-03-26", time: "20:00:00")
Venue.new(name: "Summit Music Hall", date: "2019-03-26", time: "19:00:00")
Venue.new(name: "Larimer Lounge", date: "2019-03-26", time: "20:00:00")
Venue.new(name: "Bluebird Theater", date: "2019-03-26", time: "19:00:00")

#artists
Artist.create(name: "Dream Theater", popularity: 0.056429, venue: "Paramount Theater")
Artist.create(name: "A Boogie Wit da Hoodie", popularity: 0.086217, venue: "Summit Music Hall")
Artist.create(name: "Mat Kerekes, Jetty Bones, Jacob Sigman", popularity: 0.0019269, venue: "Larimer Lounge")
Artist.create(name: "Copeland, From Indian Lakes", popularity: 0.015775, venue: "Bluebird Theater")

# "date": "2019-03-26",
# "datetime": "2019-03-26T19:00:00-0600",
# "time": "19:00:00"
# "resultsPage": {
# "status": "ok",
# "results": {
# "event": [
# {
# "id": 35941539,
# "displayName": "Dream Theater at Paramount Theatre-colorado (March 26, 2019)",
# "type": "Concert",
# "uri": "http://www.songkick.com/concerts/35941539-dream-theater-at-paramount-theatrecolorado?utm_source=56722&utm_medium=partner",
# "status": "ok",
# "popularity": 0.056429,
# "start": {
# "date": "2019-03-26",
# "datetime": "2019-03-26T20:00:00-0600",
# "time": "20:00:00"
# },
# "performance": [
# {
# "id": 68643759,
# "displayName": "Dream Theater",
# "billing": "headline",
# "billingIndex": 1,
# "artist": {
# "id": 8765,
# "displayName": "Dream Theater",
# "uri": "http://www.songkick.com/artists/8765-dream-theater?utm_source=56722&utm_medium=partner",
# "identifier": [
# {
# "mbid": "28503ab7-8bf2-4666-a7bd-2644bfc7cb1d",
# "href": "http://api.songkick.com/api/3.0/artists/mbid:28503ab7-8bf2-4666-a7bd-2644bfc7cb1d.json"
# }
# ]
# }
# }
# ],
# "ageRestriction": null,
# "flaggedAsEnded": false,
# "venue": {
# "id": 4012769,
# "displayName": "Paramount Theatre-colorado",
# "uri": "http://www.songkick.com/venues/4012769-paramount-theatrecolorado?utm_source=56722&utm_medium=partner",
# "metroArea": {
# "displayName": "Denver",
# "country": {
# "displayName": "US"
# },
# "state": {
# "displayName": "CO"
# },
# "id": 6404,
# "uri": "http://www.songkick.com/metro_areas/6404-us-denver?utm_source=56722&utm_medium=partner"
# },
# "lat": 39.73804,
# "lng": -105.02652
# },
# "location": {
# "city": "Denver, CO, US",
# "lat": 39.73804,
# "lng": -105.02652
# }
####################################################
# {
# "id": 36217014,
# "displayName": "A Boogie Wit da Hoodie at Summit Music Hall (March 26, 2019)",
# "type": "Concert",
# "uri": "http://www.songkick.com/concerts/36217014-a-boogie-wit-da-hoodie-at-summit-music-hall?utm_source=56722&utm_medium=partner",
# "status": "ok",
# "popularity": 0.086217,
# "start": {
# "date": "2019-03-26",
# "datetime": "2019-03-26T19:00:00-0600",
# "time": "19:00:00"
# },
# "performance": [
# {
# "id": 69094054,
# "displayName": "A Boogie Wit da Hoodie",
# "billing": "headline",
# "billingIndex": 1,
# "artist": {
# "id": 8869819,
# "displayName": "A Boogie Wit da Hoodie",
# "uri": "http://www.songkick.com/artists/8869819-a-boogie-wit-da-hoodie?utm_source=56722&utm_medium=partner",
# "identifier": [
# {
# "mbid": "c1708d03-8a66-46eb-848e-fe0d233ffb39",
# "href": "http://api.songkick.com/api/3.0/artists/mbid:c1708d03-8a66-46eb-848e-fe0d233ffb39.json"
# }
# ]
# }
# }
# ],
# "ageRestriction": null,
# "flaggedAsEnded": false,
# "venue": {
# "id": 836146,
# "displayName": "Summit Music Hall",
# "uri": "http://www.songkick.com/venues/836146-summit-music-hall?utm_source=56722&utm_medium=partner",
# "metroArea": {
# "displayName": "Denver",
# "country": {
# "displayName": "US"
# },
# "state": {
# "displayName": "CO"
# },
# "id": 6404,
# "uri": "http://www.songkick.com/metro_areas/6404-us-denver?utm_source=56722&utm_medium=partner"
# },
# "lat": 39.75351,
# "lng": -104.99532
# },
# "location": {
# "city": "Denver, CO, US",
# "lat": 39.75351,
# "lng": -104.99532
# }
# },#################################################################
# {
# "id": 36268804,
# "displayName": "Mat Kerekes with Jetty Bones and Jacob Sigman at Larimer Lounge (March 26, 2019)",
# "type": "Concert",
# "uri": "http://www.songkick.com/concerts/36268804-mat-kerekes-at-larimer-lounge?utm_source=56722&utm_medium=partner",
# "status": "ok",
# "popularity": 0.001926,
# "start": {
# "date": "2019-03-26",
# "datetime": "2019-03-26T20:00:00-0600",
# "time": "20:00:00"
# },
# "performance": [
# {
# "id": 69177934,
# "displayName": "Mat Kerekes",
# "billing": "headline",
# "billingIndex": 1,
# "artist": {
# "id": 8073918,
# "displayName": "Mat Kerekes",
# "uri": "http://www.songkick.com/artists/8073918-mat-kerekes?utm_source=56722&utm_medium=partner",
# "identifier": [
# {
# "mbid": "55efcbb8-e9b5-43bf-8dc4-7a68fa9f70ad",
# "href": "http://api.songkick.com/api/3.0/artists/mbid:55efcbb8-e9b5-43bf-8dc4-7a68fa9f70ad.json"
# }
# ]
# }
# },
# {
# "id": 69177939,
# "displayName": "Jetty Bones",
# "billing": "support",
# "billingIndex": 2,
# "artist": {
# "id": 8982899,
# "displayName": "Jetty Bones",
# "uri": "http://www.songkick.com/artists/8982899-jetty-bones?utm_source=56722&utm_medium=partner",
# "identifier": [
# {
# "mbid": "9d584219-8c00-452f-afec-3a13f370aa35",
# "href": "http://api.songkick.com/api/3.0/artists/mbid:9d584219-8c00-452f-afec-3a13f370aa35.json"
# }
# ]
# }
# },
# {
# "id": 69177944,
# "displayName": "Jacob Sigman",
# "billing": "support",
# "billingIndex": 3,
# "artist": {
# "id": 7733104,
# "displayName": "Jacob Sigman",
# "uri": "http://www.songkick.com/artists/7733104-jacob-sigman?utm_source=56722&utm_medium=partner",
# "identifier": []
# }
# }
# ],
# "ageRestriction": null,
# "flaggedAsEnded": false,
# "venue": {
# "id": 11428,
# "displayName": "Larimer Lounge",
# "uri": "http://www.songkick.com/venues/11428-larimer-lounge?utm_source=56722&utm_medium=partner",
# "metroArea": {
# "displayName": "Denver",
# "country": {
# "displayName": "US"
# },
# "state": {
# "displayName": "CO"
# },
# "id": 6404,
# "uri": "http://www.songkick.com/metro_areas/6404-us-denver?utm_source=56722&utm_medium=partner"
# },
# "lat": 39.75993,
# "lng": -104.9838
# },
# "location": {
# "city": "Denver, CO, US",
# "lat": 39.75993,
# "lng": -104.9838
# }
# },################################################################################################
# {
# "id": 36275499,
# "displayName": "Copeland with From Indian Lakes and Many Rooms at Bluebird Theater (March 26, 2019)",
# "type": "Concert",
# "uri": "http://www.songkick.com/concerts/36275499-copeland-at-bluebird-theater?utm_source=56722&utm_medium=partner",
# "status": "ok",
# "popularity": 0.015775,
# "start": {
# "date": "2019-03-26",
# "datetime": "2019-03-26T19:00:00-0600",
# "time": "19:00:00"
# },
# "performance": [
# {
# "id": 69188289,
# "displayName": "Copeland",
# "billing": "headline",
# "billingIndex": 1,
# "artist": {
# "id": 200105,
# "displayName": "Copeland",
# "uri": "http://www.songkick.com/artists/200105-copeland?utm_source=56722&utm_medium=partner",
# "identifier": [
# {
# "mbid": "17be38e7-97bf-4ead-8432-ba05455b3860",
# "href": "http://api.songkick.com/api/3.0/artists/mbid:17be38e7-97bf-4ead-8432-ba05455b3860.json"
# }
# ]
# }
# },
# {
# "id": 69600209,
# "displayName": "From Indian Lakes",
# "billing": "support",
# "billingIndex": 2,
# "artist": {
# "id": 3008736,
# "displayName": "From Indian Lakes",
# "uri": "http://www.songkick.com/artists/3008736-from-indian-lakes?utm_source=56722&utm_medium=partner",
# "identifier": [
# {
# "mbid": "b7765a33-ed19-4d99-bc93-1e54efdbe255",
# "href": "http://api.songkick.com/api/3.0/artists/mbid:b7765a33-ed19-4d99-bc93-1e54efdbe255.json"
# }
# ]
# }
# },
# {
# "id": 69600214,
# "displayName": "Many Rooms",
# "billing": "support",
# "billingIndex": 3,
# "artist": {
# "id": 8703418,
# "displayName": "Many Rooms",
# "uri": "http://www.songkick.com/artists/8703418-many-rooms?utm_source=56722&utm_medium=partner",
# "identifier": [
# {
# "mbid": "d076747b-404c-4907-806b-14587dd75d65",
# "href": "http://api.songkick.com/api/3.0/artists/mbid:d076747b-404c-4907-806b-14587dd75d65.json"
# }
# ]
# }
# }
# ],
# "ageRestriction": null,
# "flaggedAsEnded": false,
# "venue": {
# "id": 10459,
# "displayName": "Bluebird Theater",
# "uri": "http://www.songkick.com/venues/10459-bluebird-theater?utm_source=56722&utm_medium=partner",
# "metroArea": {
# "displayName": "Denver",
# "country": {
# "displayName": "US"
# },
# "state": {
# "displayName": "CO"
# },
# "id": 6404,
# "uri": "http://www.songkick.com/metro_areas/6404-us-denver?utm_source=56722&utm_medium=partner"
# },
# "lat": 39.74028,
# "lng": -104.94838
# },
# "location": {
# "city": "Denver, CO, US",
# "lat": 39.74028,
# "lng": -104.94838
# }
# },
