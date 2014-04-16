class CreateStudentsgroups < ActiveRecord::Migration
  def change
    create_table :studentsgroups do |t|
      t.references :student, index: true
      t.references :group, index: true

      t.timestamps
    end
  end
end
