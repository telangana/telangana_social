namespace :page do
 desc "Pages are loading from facebook"
   task :post => :environment do
    puts "Post are : created on page"
    #serach pages from facebook
      ACCESS_TOKEN = FbToken.last.access_token

      @user = FbGraph::User.fetch("saikiran.mothe", :access_token => ACCESS_TOKEN)
   #    @groups = @user.groups
   #    for group in 70..100
        
   #      @group = FbGraph::Group.fetch(@groups.at(group).raw_attributes[:id], :access_token => ACCESS_TOKEN)
			# 	@group.feed!(
			# 	  :message => 'Open Telangana ... Lets build great telangana with ITC.',
			# 	   :picture => 'https://lh4.googleusercontent.com/-PzjH10zo3x8/UxwIXMCCprI/AAAAAAAAG54/KUW3zlnN4Ng/w851-h527-no/1625542_259586170884281_1781946727_n.png',
			# 	   :link => 'http://www.opentelangana.com',
			# 	   :name => 'opentelangana',
			# 	   :description => 'Lets code for telangana'
			# 	)
			# 	p "wow poseted on group# you did it"
			# end

     for page in 210..300
		  @page = FbGraph::Page.fetch(Page.find(page).id, :access_token => ACCESS_TOKEN)
				# unless @user.permissions?
					
				# end
				@page.feed!(
				  :message => 'Open Telangana ..Lets code for telangana. Lets build great telangana.',
				  :picture => 'https://lh4.googleusercontent.com/-PzjH10zo3x8/UxwIXMCCprI/AAAAAAAAG54/KUW3zlnN4Ng/w851-h527-no/1625542_259586170884281_1781946727_n.png',
				  :link => 'http://www.opentelangana.com',
				  :name => 'opentelangana',
				  :description => 'Lets code for telangana'
				)
				p "wow poseted on page# you did it"
			end
   end
end



