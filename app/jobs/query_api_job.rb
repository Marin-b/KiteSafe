class QueryApiJob < ApplicationJob
  queue_as :default

  def perform(*args) #Job.perfom_later(spot_id: 1)
    service = UpdateSpotService.new
    spot = Spot.all
    spot.each do |spot|
      service.update_spot(spot)
    end
  end
end
