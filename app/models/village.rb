class Village < ActiveRecord::Base

	include RailsAdminCharts


    belongs_to :constitution
  
  	has_many :groups
  	has_many :pages

end
