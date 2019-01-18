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

    end
end
