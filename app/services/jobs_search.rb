require 'open-uri'

class JobsSearch

  def jobs
    JobsComparator.new(results).compare || []
  end

  private
    def results
      providers.map do |provider|
        Common::Results.new(provider).collection
      end.flatten
    end

    def providers
      dir_content = Dir["app/services/*/"].reject { |d| d =~ /.*common\/$/ }
      dir_content.map { |d| d.gsub("app/services/", "").classify.constantize }
    end
end
