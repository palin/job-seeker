class TheItJobBoard::Provider < Common::Provider
  def base_url
    "http://www.theitjobboard.co.uk"
  end

  def search_url
    "#{base_url}/index.php?"
  end
end