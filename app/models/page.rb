class Page < ActiveRecord::Base
	include RailsAdminCharts

		belongs_to :constitution 
		#constitution_id
end
