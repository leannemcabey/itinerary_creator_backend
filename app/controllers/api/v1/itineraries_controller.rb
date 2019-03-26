class Api::V1::ItinerariesController < ApplicationController

    def index
      @itineraries = Itinerary.all
      render json: @itineraries, status: :ok
    end

    def show
      @itinerary = Itinerary.find(params[:id])
      render json: @itinerary, status: :ok
    end

    def create
      @new_itinerary = Itinerary.create(itinerary_params)
      render json: @new_itinerary, status: :accepted
    end

    def update
      @update_itinerary = Itinerary.update(itinerary_params)
      render json: @update_itinerary, status: :accepted
    end

    private

      def itinerary_params
        params.permit(:user_id, :budget, :title, :notes, :date, :city, :state, places_attributes: [:id, :city, :state, :address, :name, :rating, :phone_number, :description, :website, :price_level])
      end

end
