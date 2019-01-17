class Api::V1::ItinerariesController < ApplicationController

    def index
        @itineraries = Itinerary.all

        render json: @itineraries, status: :ok
    end

    def show
        @itinerary = itinerary.find(params[:id])
        render json: @itinerary, status: :ok
    end
end
