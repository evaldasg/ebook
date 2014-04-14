class Teacher < ActiveRecord::Base
  has_many :groups, dependent: :destroy
end
