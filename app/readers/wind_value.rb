class WindValue
  def initialize(value)
    @value = value
  end

  def convert(cardinal)
    send(cardinal)
  end

  private

  def N
    [(315..360),(0..45)]
  end

  def S
    (135..225)
  end

  def E
    (45..135)
  end

  def W
    (225..315)
  end

  def NE
    (0..90)
  end

  def SE
    (90..180)
  end

  def SW
    (180..270)
  end

  def NW
    (270..360)
  end
end
