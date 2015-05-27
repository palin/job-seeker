class Jobsite::Params < Common::Params
  def hash
    {
      fp_skill_include: query,
      jobtype: job_type,
      location_include: location,
      search_type: search_type,
      location_within: radius,
      search_currency_code: currency,
      rownum: start_offer,
      daysback: age,
      reord: sort_by
    }
  end

  private
    def query
      'Ruby on Rails'
    end

    def job_type
      'X'
    end

    def location
      'London'
    end

    def radius
      20
    end

    def limit
      25
    end

    def currency
      'GBP'
    end

    def age
      7
    end

    def search_type
      'quick'
    end

    def start_offer
      (page_number * limit) - limit
    end

    def sort_by
      'D'
    end
end
