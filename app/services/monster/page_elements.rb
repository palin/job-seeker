class Monster::PageElements < Common::PageElements

  def results_list
    'div#listings tr.odd, div#listings tr.even'
  end

  def result_link
    'a.slJobTitle'
  end

  def next_page_link(page)
    page.css('div.navigationBar > a.box.nextLink').last
  end

  def description
    ''
  end

  def advertiser
    '.companyContainer a:last'
  end

  def date
    '.jobTitleCol div.fnt20'
  end

  def salary
    '.companyContainer div.fnt13'
  end
end
