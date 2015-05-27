class Common::Provider
  def base_url
    raise NotImplementedError
  end

  def search_url
    raise NotImplementedError
  end
end