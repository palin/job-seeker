class Jobsite::PageElements < Common::PageElements

  def results_list
    'div.searchResultsColumn div.vacRow'
  end

  def result_link
    'h3 a'
  end

  def next_page_link(page)
    page.css('div.resultsPagination > a.next').last
  end

  def description
    'p.jobDesc'
  end

  def advertiser
    'Jobsite ad'
  end

  def date
    'dd.vacPosted'
  end

  def salary
    'dd.vacSalary'
  end
end
