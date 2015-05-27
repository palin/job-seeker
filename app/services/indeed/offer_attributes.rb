class Indeed::OfferAttributes < Common::OfferAttributes
  def url
    provider.base_url + super
  end
end