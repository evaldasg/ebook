class ChangeDurationColumnInDisciplines < ActiveRecord::Migration
  def up
    change_column :disciplines, :duration, :decimal, precision: 2, scale: 1, default: 0
  end
end
