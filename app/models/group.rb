class Group < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :discipline

  has_many :studentsgroups, dependent: :destroy
  has_many :students, through: :studentsgroups

  accepts_nested_attributes_for :students

  validates :name, presence: true
end
