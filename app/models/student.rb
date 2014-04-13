class Student < ActiveRecord::Base
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
