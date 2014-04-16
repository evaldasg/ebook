class RmoveColumnsFromDisciplines < ActiveRecord::Migration
  def change
    remove_column :disciplines, :klass_8, :float
    remove_column :disciplines, :klass_7, :float
    remove_column :disciplines, :klass_6, :float
    remove_column :disciplines, :klass_5, :float
    remove_column :disciplines, :klass_4, :float
    remove_column :disciplines, :klass_3, :float
    remove_column :disciplines, :klass_2, :float
    remove_column :disciplines, :klass_1, :float
  end
end
