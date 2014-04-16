class Teacher < ActiveRecord::Base
  has_many :groups
  has_many :disciplines, through: :groups

end
