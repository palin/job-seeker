class Jobsite::Provider < Common::Provider
  def base_url
    'http://www.jobsite.co.uk'
  end

  def search_url
    "#{base_url}/cgi-bin/advsearch?"
  end
end
