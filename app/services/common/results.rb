class Common::Results
  attr_reader :provider_module

  def initialize(provider_module)
    @provider_module = provider_module
  end

  def collection
    page = start_page
    offers = []

    begin
      visited_page = visit_page(page)
      visited_page_results = visited_page.css(page_elements.new.results_list)

      visited_page_results.each do |result|
        offer = offer_attributes.new(result)
        offers.push new_offer(offer, provider_module.to_s)
      end

      page += 1
    end while next_page_exists?(visited_page)

    offers
  end

  protected
    def start_page
      1
    end

    def new_offer(offer, provider)
      Offer.new(offer.title, offer.url, offer.advertiser, offer.salary, offer.description, offer.date, provider)
    end

    def visit_page(page_number)
      Nokogiri::HTML(open(page_url(page_number)))
    end

    def page_url(page_number)
      "#{provider.new.search_url}#{search_params(page_number)}"
    end

    def next_page_exists?(last_visited_page)
      next_element(last_visited_page).present?
    end

    def next_element(last_visited_page)
      page_elements.new.next_page_link(last_visited_page)
    end

    def search_params(page_number)
      params.new(page_number).hash.to_param
    end

  private
    def offer_attributes
      provider_module::OfferAttributes
    end

    def page_elements
      provider_module::PageElements
    end

    def params
      provider_module::Params
    end

    def provider
      provider_module::Provider
    end
end
