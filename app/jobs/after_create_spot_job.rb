class AfterCreateSpotJob < ApplicationJob
  queue_as :default

  def perform(id) #Job.perfom_later(spot_id: 1)
    puts "querying api"
    service = UpdateSpotService.new
    spot = Spot.find(id)
    puts spot
    service.update_spot(spot)
  end
end
