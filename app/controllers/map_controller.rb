class MapController < ApplicationController
  def show
    @spots = Spot.all
    @markers = @spots.map do |spot|
      {
        lng: spot.longitude,
        lat: spot.latitude,
        infoWindow: render_to_string(partial: "infowindow", locals: { spot: spot }),
        description: spot.description,
        spot_id: spot.id
      }
    end
  end
end
