class Indeed::Provider < Common::Provider
  def base_url
    'http://www.indeed.co.uk'
  end

  def search_url
    "#{base_url}/jobs?"
  end
end
