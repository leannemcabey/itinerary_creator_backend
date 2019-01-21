# u1 = User.create(name:'Ruth')
# u2 = User.create(name: 'Leanne')

@client = GooglePlaces::Client.new(Rails.application.credentials.google[:place_api_key])

nyc_places_1 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'restaurant', :detail => true})

nyc_places_2 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'art_gallery', :detail => true})

nyc_places_3 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'bakery', :detail => true})

nyc_places_4 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'bar', :detail => true})

nyc_places_5 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'cafe', :detail => true})

nyc_places_6 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'church', :detail => true})

nyc_places_7 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'city_hall', :detail => true})

nyc_places_8 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'library', :detail => true})

nyc_places_9 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'museum', :detail => true})

nyc_places_10 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'night_club', :detail => true})

nyc_places_11 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'park', :detail => true})

nyc_places_12 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'spa', :detail => true})

nyc_places_13 = @client.spots(40.7128, -74.0060, options = {:rankby => 'prominence', :types => 'natural_feature', :detail => true})

place_groups = [nyc_places_1, nyc_places_2, nyc_places_3, nyc_places_4, nyc_places_5, nyc_places_6, nyc_places_7, nyc_places_8, nyc_places_9, nyc_places_10, nyc_places_11, nyc_places_12, nyc_places_13]

# I haven't actually tested the below nested loop, I did each "group" separately so I could babysit the data. But I think this should work to seed everything in one go.

place_groups.each do |place_group|
  place_group.each do |place|
    Place.create(city: place.city, state: place.region, address: place.formatted_address, latitude: place.lat, longitude: place.lng, name: place.name, rating: place.rating, description: place.types.join(", "), phone_number: place.formatted_phone_number, website: place.website, price_level: place.price_level)
  end
end
