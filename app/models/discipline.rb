class Discipline < ActiveRecord::Base
  has_many :studentsdisciplines, dependent: :destroy
  has_many :students, through: :studentsdisciplines
  has_many :groups
  has_many :teachers, through: :groups

  KLASSES = [['1 kl.', 1], ['2 kl.', 2], ['3 kl.', 3], ['4 kl.', 4], ['5 kl.', 5], ['6 kl.', 6], ['7 kl.', 7], ['1 MMUP', 8], ['2 MMUP', 9], ['3 MMUP', 10], ['4 MMUP', 11]]
  SPECIALITIES = ['Fortepijonas', 'Akordeonas', 'Chorinis dainavimas', 'Styginiai', 'Pučiamieji']
  SYLLABUS = ['Pradinio ugdymo', 'Pagrindinio ugdymo']
  VARIANTS = ['Individuali pamoka', 'Grupinė pamoka']

  scope :find_by_klass, ->(kl) {where(klass: kl)}
  scope :find_by_speciality, ->(sp) { where(speciality: sp) }

  def is_required?
    self.required ? 'Taip' : 'Ne'
  end

  def what_status?
    self.status ? 'Aktyvus' : 'Neaktyvus'
  end

  def individual?
    self.variant == "Individuali pamoka"
  end
end
