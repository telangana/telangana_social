namespace :user do
	 desc "Users are loading from facebook"
   task :load => :environment do
    puts "Users: creating"
    #serach pages from facebook
    ACCESS_TOKEN = FbToken.last.access_token

    #for i in 61..119

   # @groups = FbGraph::Group.search(Constitution.find(i).name,:access_token => ACCESS_TOKEN)
		 @groups = FbGraph::Group.search("manthani",:access_token => ACCESS_TOKEN)
	  # @groups.each do |group|
	  # 	 group.members.each do | user | 
	  # 	 	  UserProfle.create(:name => user.raw_attributes[:name],:fbprofile_id => user.raw_attributes[:id] ,:constitution_id=> .id ) 
    @groups.each do |users|
			for i in 0..users.members.length-1
				h = Hash.new
				h[:fbprofile_id] = users.members.at(i).raw_attributes[:id].to_s
				h[:name] = users.members.at(i).raw_attributes[:name]
				 h[:constitution_id] = 34
				_i = UserProfile.new(h)
				_i.save!
         p "lllllllllll"
			end
  end
# end
end
end