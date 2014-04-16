class Studentsdiscipline < ActiveRecord::Base
  belongs_to :student
  belongs_to :discipline

  scope :active_only, -> { where(status_b: true) }
end
