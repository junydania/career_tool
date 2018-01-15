class Job < ApplicationRecord

  has_many :competences, inverse_of: :job
  accepts_nested_attributes_for :competences,
                                reject_if: :all_blank, allow_destroy: true

  belongs_to :business_unit
  belongs_to :division
  belongs_to :job_family
  belongs_to :organizational_unit
  belongs_to :primary_cluster
  belongs_to :secondary_cluster
  belongs_to :work_level

  before_save :capitalize_level_name




  private

  def capitalize_job_name
    self.job_name = self.job_name.downcase.titleize
  end

end
