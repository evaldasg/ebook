class AddFieldToStudentsdisciplines < ActiveRecord::Migration
  def up
    add_column :studentsdisciplines, :status, :boolean, default: true
  end
end
