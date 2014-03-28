class AddConstituionIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :constitution_id, :integer
  end
end
