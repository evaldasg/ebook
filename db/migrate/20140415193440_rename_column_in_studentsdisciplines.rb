class RenameColumnInStudentsdisciplines < ActiveRecord::Migration
  def change
    rename_column :studentsdisciplines, :status, :status_b
  end
end
