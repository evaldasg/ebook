class ChangeFieldsInGroups < ActiveRecord::Migration
  def up
    remove_column :groups, :discipline
    change_column :groups, :description, :text
    add_reference :groups, :discipline, index: true
  end
end
