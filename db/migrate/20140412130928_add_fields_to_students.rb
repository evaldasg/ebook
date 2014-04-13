class AddFieldsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :speciality, :string
    add_column :students, :age, :integer
    add_column :students, :klass, :integer
  end
end
