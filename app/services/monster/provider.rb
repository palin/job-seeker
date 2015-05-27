class Monster::Provider < Common::Provider
  def base_url
    'http://jobsearch.monster.co.uk'
  end

  def search_url
    "#{base_url}/jobs/Temporary-Contract-Project_8?"
  end
end
