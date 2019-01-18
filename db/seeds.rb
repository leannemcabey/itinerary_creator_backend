# u1 = User.create(name:'Ruth')
# u2 = User.create(name: 'Leanne')

@client = GooglePlaces::Client.new('AIzaSyCn9eBALlUlvKWxWMqGpw8JdKF_yf0-1Zo')

nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'restaurant', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'art_gallery', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'bakery', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'bar', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'cafe', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'church', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'city_hall', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'library', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'museum', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'night_club', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'park', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'spa', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'stadium', :detail => true})
# nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'zoo', :detail => true})

nyc_places_12.each do |place|
  Place.create(city: place.city, state: place.region, address: place.formatted_address, latitude: place.lat, longitude: place.lng, name: place.name, rating: place.rating, description: place.types.join(", "), phone_number: place.formatted_phone_number, website: place.website, price_level: place.price_level)
end

# INCLUDING PERMANANTLY_CLOSED WAS BREAKING THE SEED PROCESS FOR SOME REASON
# permenantly_closed: place.permenantly_closed,
