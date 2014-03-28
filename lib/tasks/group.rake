namespace :group do

	 desc "Groups are loading from facebook"
   task :load => :environment do
    puts "Groups: creating"
    #serach pages from facebook
    ACCESS_TOKEN = FbToken.last.access_token

# for i in 61..119

    #@groups = FbGraph::Group.search(Constitution.find(i).name,:access_token => ACCESS_TOKEN)
		@groups = FbGraph::Group.search("warangal",:access_token => ACCESS_TOKEN)
	
			for page in 0..@groups.length-1
				h = Hash.new
				h[:group_id] = @groups[page].raw_attributes[:id].to_s
				h[:name] = @groups[page].raw_attributes[:name]
				 h[:constitution_id] = 118
				_page = Group.new(h)
				_page.save!

				p "Group #{@groups[page].raw_attributes[:name]} got saved :)"
			  p @groups.count
			end
  end
# end
end


