class HomeController < ApplicationController
  def index
    @jobs = jobs_search.jobs
  end

  private
    def jobs_search
      JobsSearch.new
    end
end
