class JobsComparator

  attr_reader :jobs

  def initialize(jobs)
    @jobs = jobs
  end

  def compare
    results = compare_descriptions(jobs)
    # results = compare_titles(results)
    results = delete_blacklisted_titles(results)

    groups = group_by_advertiser(results)
    groups_sorted = sort_by_advertiser(groups)
    delete_blacklisted_advertisers(groups_sorted)
  end

  def compare_descriptions(results)
    if results.first.description.present?
      results.uniq { |r| r.description.first(160) }
    else
      results
    end
  end

  def compare_titles(results)
    results.uniq { |r| r.title } if results
  end

  def group_by_advertiser(results)
    results.group_by do |r|
      r.advertiser #.try { |n| advertiser_name(n) }
    end if results
  end

  def delete_blacklisted_titles(results)
    results.delete_if do |offer|
      blacklisted = false

      blacklisted_titles.each do |bt|
        blacklisted = offer.title.include?(bt)
        break if blacklisted
      end

      blacklisted
    end if results
  end

  def sort_by_advertiser(groups)
    groups.sort_by(&:first)
  end

  def delete_blacklisted_advertisers(groups)
    groups.delete_if do |k, v|
      blacklisted_advertisers.include?(k)
    end if groups
  end

  def advertiser_name(name)
    array = name.split(" ")

    if array.count > 1
      second_part = array[1]
      array.first + " " + second_part
    else
      array.first
    end
  end

  def blacklisted_advertisers
    []
  end

  def blacklisted_titles
    ["Java Developer", "Perl Developer"]
  end
end
