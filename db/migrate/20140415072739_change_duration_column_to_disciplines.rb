class ChangeDurationColumnToDisciplines < ActiveRecord::Migration
  def change
    change_column :disciplines, :duration, :decimal, precision: 1, default: 0
  end
end
