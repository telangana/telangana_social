class Constitution < ActiveRecord::Base
	include RailsAdminCharts

	belongs_to :district
  #district_id :integer
  
	has_many :villages
  has_many :groups
  has_many :pages
  has_many :users
  has_many :user_profiles
end
