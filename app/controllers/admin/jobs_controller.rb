class Admin::JobsController < ApplicationController

  before_action :authenticate_user!

  def index

  end

  def new
    @business_units = BusinessUnit.all
    @organizational_units = OrganizationalUnit.all
    @divisions = Division.all
    @job_families = JobFamily.all
    @primary_clusters= PrimaryCluster.all
    @secondary_clusters = SecondaryCluster.all
    @job = Job.new
    @job.competences.build
  end

  def create

  end


  def place_params
    params.require(:job).permit(:job_name,
                                :competence_id,
                                :job_family_id,
                                :business_unit_id,
                                :organizational_unit_id,
                                :division_id,
                                :primary_cluster,
                                competences_attributes: [:id, :skill])
  end

end


