class Api::V1::PlacesController < ApplicationController

    def index
      @places = Place.all
      render json: @places, status: :ok
    end

    def show
      @place = place.find(params[:id])
      render json: @place, status: :ok
    end
end
