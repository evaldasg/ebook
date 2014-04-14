class Group < ActiveRecord::Base
  belongs_to :teacher

  validates :name, :description, presence: true
end
