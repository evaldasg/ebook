class CreateStudentsdisciplines < ActiveRecord::Migration
  def change
    create_table :studentsdisciplines do |t|
      t.references :student, index: true
      t.references :discipline, index: true

      t.timestamps
    end
  end
end
