class CreateDisciplines < ActiveRecord::Migration
  def change
    create_table :disciplines do |t|
      t.string :name
      t.float :klass_1
      t.float :klass_2
      t.float :klass_3
      t.float :klass_4
      t.float :klass_5
      t.float :klass_6
      t.float :klass_7
      t.float :klass_8

      t.timestamps
    end
  end
end
