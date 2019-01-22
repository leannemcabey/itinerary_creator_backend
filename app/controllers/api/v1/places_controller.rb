class Api::V1::PlacesController < ApplicationController

    def index
      @places = Place.all
      render json: @places, status: :ok
    end

    def show
      @place = place.find(params[:id])
      render json: @place, status: :ok
    end

    def create
      @new_place = Place.create(place)
      render json: @new_place, status: :accepted
    end

    def update
      @update_place = Place.update(place)
      render json: @update_place, status: :accepted
    end

    private

    def places_params
      params.permit(:city, :state, :address, :name, :rating, :phone_number, :description, :website, :price_level)
    end
end
