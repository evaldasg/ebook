class Student < ActiveRecord::Base
  has_many :studentsdisciplines, dependent: :destroy
  has_many :studentsgroups, dependent: :destroy
  has_many :disciplines, through: :studentsdisciplines
  has_many :groups, through: :studentsgroups

  accepts_nested_attributes_for :groups



  def initial_disciplines?
    klass <= 3
  end

  def main_disciplines?
    klass >= 4
  end

  def mmup?
    klass == 8
  end
end
