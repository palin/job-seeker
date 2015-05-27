class TheItJobBoard::PageElements < Common::PageElements

  def results_list
    'div#SearchResults > div'
  end

  def result_link
    'h2 a'
  end

  def next_page_link(page)
    page.css('a#NextPage')
  end

  def description(offer_id)
    "//p[@id='SYNOPSIS[#{offer_id}]']"
  end

  def advertiser(offer_id)
    "//span[@id='CONTACT_OFFICE[#{offer_id}]']"
  end

  def date(offer_id)
    "//span[@id='POSTED_DATE[#{offer_id}]']"
  end

  def salary(offer_id)
    "//span[@id='SALARY[#{offer_id}]']"
  end
end
