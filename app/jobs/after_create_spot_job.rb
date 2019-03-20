class AfterCreateSpotJob < ApplicationJob
  queue_as :default

  def perform(*args) #Job.perfom_later(spot_id: 1)
    service = UpdateSpotService.new
    spot = Spot.last
    service.update_spot(spot)
  end
end
