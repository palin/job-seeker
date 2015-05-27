class Jobsite::OfferAttributes < Common::OfferAttributes
  def url
    provider.base_url + super
  end

  def advertiser
    elements.advertiser
  end
end
