class District < ActiveRecord::Base

	include RailsAdminCharts

	 def self.xaxis
    ['cat a', 'cat b', 'cat c' 'cat d', 'cat e', 'cat f', 'cat g', 'cat h']
   end
    def self.label_rotation
    "-45"
  end
	has_many :constitutions
end
