class VenuesController  < ApplicationController

    before_action :set_venue, only: [:show, :update, :destroy]

    def index
        @venues = Venue.all

        render json: @venues
    end

    def create
        @venue = Venue.new(venue_params)

        if @venue.save
            render json: @venue, status: :created
        else
            render json: @venue.errors, status: :unprocessable_entity
        end
    end

    def update
        if @venue.update(venue_params)
            render json: @venue
        else
            render json: @venue.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @venue.destroy
    end

    private

    def set_venue
        @venue = Venue.find(params[:id])
    end

    def venue_params
        params.require(:venue).permit(:name, :description)
    end

end