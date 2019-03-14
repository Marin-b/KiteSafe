class QueryApiJob < ApplicationJob
  queue_as :default

  def perform(*args)
    @spots = Spot.all
    @spots.each do |spot|
      url = "https://front-remora.greatcircle.be/forecast?token=#{ENV['SQUID_API_KEY']}&longitude=#{spot.longitude}&latitude=#{spot.latitude}&variables=wind&exclude=minute&extend=hour"
      json_answer = open(url).read
      api_answer = JSON.parse(json_answer)
      api_answer["forecast"].each_with_index do |forecast, index|
        if index < 72
          WeatherCondition.create(wind_direction: forecast["windDirection_10m"], wind_speed: forecast["windSpeed_10m"], date: DateTime.strptime(forecast["timestamp"]["unix"].to_s,'%s'), spot_id: spot.id)
        elsif (index + 1) % 3 == 0
          WeatherCondition.create(wind_direction: forecast["windDirection_10m"], wind_speed: forecast["windSpeed_10m"], date: DateTime.strptime(forecast["timestamp"]["unix"].to_s,'%s'), spot_id: spot.id)
        end
      end
      sleep 1
    end
  end
end
