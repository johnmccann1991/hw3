class PlacesController < ApplicationController
    def index
        @places = Place.all
    end

    def new
        @place = Place.new
    end

    def create
        @place = Place.new(parans["place"])
        @place.save
        redirect_to "/places"
    end

    def show
        @place = Place.find(parans["id"])
    end

end
