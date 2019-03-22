class UpdateSpotService

  def in_range?(range, direction)
    return range.include?(direction) if range.class == Range

    range.each do |x|
      return true if x.include?(direction)
    end
    false
  end

  def get_level(direction, spotid)
    off_direction = Spot.find(spotid).difficulty_level.offshore_direction
    off_degree_range = WindValue.new(direction).convert(off_direction)
    x = 0
    until in_range?(off_degree_range, direction % 360)
      direction += 90
      x += 90
    end
    x = 360 - x unless x.zero?
    Spot.find(spotid).difficulty_level.send("level_#{x}")
  end

  def update_spot(spot)
    url = "https://front-remora.greatcircle.be/forecast?token=#{ENV['SQUID_API_KEY']}&longitude=#{spot.longitude}&latitude=#{spot.latitude}&variables=wind&exclude=minute&extend=hour"
    json_answer = open(url).read
    api_answer = JSON.parse(json_answer)
    api_answer["forecast"].each_with_index do |forecast, index|
      if index < 72
        WeatherCondition.create(wind_direction: forecast["windDirection_10m"], wind_speed: forecast["windSpeed_10m"], date: DateTime.strptime(forecast["timestamp"]["unix"].to_s,'%s'), spot_id: spot.id, level: get_level(forecast["windDirection_10m"], spot.id))
      elsif (index + 1) % 3 == 0
        WeatherCondition.create(wind_direction: forecast["windDirection_10m"], wind_speed: forecast["windSpeed_10m"], date: DateTime.strptime(forecast["timestamp"]["unix"].to_s,'%s'), spot_id: spot.id, level: get_level(forecast["windDirection_10m"], spot.id))
      end
    end
    sleep 1
  end
end
