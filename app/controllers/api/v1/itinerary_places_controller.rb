class Api::V1::ItineraryPlacesController < ApplicationController

    def index
      @itinerary_places = ItineraryPlace.all
      render json: @itinerary_places, status: :ok
    end

    def show
      @itinerary_place = ItineraryPlace.find(params[:id])
      render json: @itinerary_place, status: :ok
    end

    def create
      @new_itinerary_place = ItineraryPlace.create(itinerary_place_params)
      render json: @new_itinerary_place, status: :accepted
    end

    private

      def itinerary_places_params
        params.permit(:itinerary_id, :place_id)
      end
end
