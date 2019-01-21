class Api::V1::ItinerariesController < ApplicationController

    def index
        @itineraries = Itinerary.all
        render json: @itineraries, status: :ok
    end

    def show
        @itinerary = itinerary.find(params[:id])
        render json: @itinerary, status: :ok
    end

    def create
      @new_itinerary = Itinerary.create(itinerary_params)
      render json: @new_itinerary, status: :accepted
    end

    private

      def itinerary_params
        params.permit(:user_id, :budget, :title, :start, :end, :city, :state)
      end
end
