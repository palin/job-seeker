class Indeed::PageElements < Common::PageElements

  def results_list
    'td#resultsCol .row.result'
  end

  def result_link
    'a'
  end

  def next_page_link(page)
    page.css('div.pagination span.pn').last.try { |tag| tag.content =~ /Next/ }
  end

  def description
    'span.summary'
  end

  def advertiser
    'span.company'
  end

  def date
    'span.date'
  end

  def salary
    'td.snip nobr'
  end
end
