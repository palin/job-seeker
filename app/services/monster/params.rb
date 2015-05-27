class Monster::Params < Common::Params
  def hash
    {
      q: query,
      tm: age,
      where: location,
      cy: country,
      pg: page_number
    }
  end

  private
    def query
      'Ruby on rails'
    end

    def location
      'London__2c-London'
    end

    def age
      'Last-7-Days'
    end

    def country
      'uk'
    end
end
