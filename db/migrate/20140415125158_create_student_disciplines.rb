class CreateStudentDisciplines < ActiveRecord::Migration
  def change

    create_table :student_disciplines do |t|
      t.references :student, index: true
      t.references :discipline, index: true

      t.timestamps
    end
  end
end
