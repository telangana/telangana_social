class CreateSlogans < ActiveRecord::Migration
  def change
    create_table :slogans do |t|
      t.string :name
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
