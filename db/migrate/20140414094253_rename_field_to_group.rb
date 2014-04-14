class RenameFieldToGroup < ActiveRecord::Migration
  def change
    rename_column(:groups, :type, :description)
  end
end
