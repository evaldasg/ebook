class AddFieldToTeacher < ActiveRecord::Migration
  def change
    add_column :teachers, :age, :integer
    add_column :teachers, :experience, :float
    add_column :teachers, :speciality, :string
  end
end
