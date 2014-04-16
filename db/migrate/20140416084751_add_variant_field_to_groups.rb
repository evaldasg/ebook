class AddVariantFieldToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :variant, :string
  end
end
