class AddFieldToDisciplines < ActiveRecord::Migration
  def change
    add_column :disciplines, :klass, :integer, limit: 1
    add_column :disciplines, :variant, :string
    add_column :disciplines, :duration, :float, scale: 1
    add_column :disciplines, :speciality, :string
    add_column :disciplines, :syllabus, :string
    add_column :disciplines, :required, :boolean, default: true
    add_column :disciplines, :status, :boolean, default: true
  end
end
