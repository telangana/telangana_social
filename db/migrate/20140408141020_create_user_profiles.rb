class CreateUserProfiles < ActiveRecord::Migration
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :fbprofile_id
      t.integer :constitution_id
      t.timestamps
    end
  end
end
