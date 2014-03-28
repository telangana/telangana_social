class CreateConstitutions < ActiveRecord::Migration
  def change
    create_table :constitutions do |t|
      t.integer :c_id
      t.string :name

      t.timestamps
    end
  end
end
