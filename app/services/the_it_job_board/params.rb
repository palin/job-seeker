class TheItJobBoard::Params < Common::Params
  def hash
    {
      SearchTerms: query,
      JobTypeFilter_1: job_type,
      LocationSearchTerms: location,
      RadiusUnit: radius_unit,
      Radius: radius,
      Mode: other,
      lang: lang,
      Page: page_number,
      DatePostedFilter: age
    }
  end

  private
    def query
      'Ruby on Rails'
    end

    def job_type
      1
    end

    def location
      'London'
    end

    def radius_unit
      2
    end

    def radius
      25
    end

    def other
      'AdvertSearch'
    end

    def lang
      'en'
    end

    def age
      7
    end
end
