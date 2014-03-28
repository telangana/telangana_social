class AddConstituionIdToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :constitution_id, :integer
  end
end
