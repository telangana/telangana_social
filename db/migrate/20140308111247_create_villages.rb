class CreateVillages < ActiveRecord::Migration
  def change
    create_table :villages do |t|
      t.string :name
      t.integer :constitution_id
      t.string :about

      t.timestamps
    end
  end
end
