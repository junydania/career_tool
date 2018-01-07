class Admin::JobFamiliesController < ApplicationController

  def new
    @job_family = JobFamily.new
  end


end
