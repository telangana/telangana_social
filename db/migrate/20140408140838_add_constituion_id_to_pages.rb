class AddConstituionIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :constitution_id, :integer
  end
end
