class AddFieldsToGroup < ActiveRecord::Migration
  def change
    add_column :groups, :discipline, :string
  end
end
