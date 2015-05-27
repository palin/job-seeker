class Common::OfferAttributes
  attr_reader :offer

  def initialize(offer)
    @offer = offer
  end

  def title
    offer.css(elements.result_link).first.content
  end

  def url
    offer.css(elements.result_link).first['href']
  end

  [:advertiser, :salary, :description, :date].each do |m|
    define_method(m) do
      offer.css(elements.send(m)).first.try(:content)
    end
  end

  protected

    def child_module
      self.class.to_s.split("::").first.constantize
    end

    def provider
      child_module::Provider.new
    end

    def elements
      child_module::PageElements.new
    end
end
