class AddDistrictIdToConstitutions < ActiveRecord::Migration
  def change
    add_column :constitutions, :district_id, :integer
  end
end
