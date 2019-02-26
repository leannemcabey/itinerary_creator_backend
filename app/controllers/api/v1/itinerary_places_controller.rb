class Api::V1::ItineraryPlacesController < ApplicationController

    def create
      @new_itinerary_place = ItineraryPlace.create(itinerary_places_params)
      render json: @new_itinerary_place, status: :accepted
    end

    private

      def itinerary_places_params
        params.permit(:itinerary_id, :place_id)
      end
end
