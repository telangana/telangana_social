class AddDetailsToConstitutions < ActiveRecord::Migration
  def change
    add_column :constitutions, :cons_voter_all, :string
    add_column :constitutions, :cons_voters_women, :string
    add_column :constitutions, :cons_voters_men, :string
    add_column :constitutions, :mp_cons_id, :integer
  end
end
