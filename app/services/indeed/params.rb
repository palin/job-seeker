class Indeed::Params < Common::Params
  def hash
    {
      as_and: query,
      jt: job_type,
      l: location,
      radius: radius,
      limit: limit,
      sort: sort,
      psf: other,
      fromage: age,
      start: start_offer_number
    }
  end

  private
    def query
      'Ruby on Rails'
    end

    def job_type
      'contract'
    end

    def location
      'London'
    end

    def radius
      25
    end

    def limit
      50
    end

    def max_pages
      20
    end

    def sort
      'date'
    end

    def other
      'advsrch'
    end

    def start_offer_number
      (page_number * limit) - limit
    end

    def age
      7
    end
end
