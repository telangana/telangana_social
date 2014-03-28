namespace :page do
	 desc "Pages are loading from facebook"
   task :load => :environment do
    puts "Pages: created"
    #serach pages from facebook
    ACCESS_TOKEN = FbToken.last.access_token

    for i in 31..90
    @results = FbGraph::Page.search(Constitution.find(i).name,:access_token => ACCESS_TOKEN)
			for page in 0..@results.length-1
				h = Hash.new
				h[:page_id] = @results[page].raw_attributes[:id].to_s
				h[:name] = @results[page].raw_attributes[:name]
				h[:constitution_id] = i
				_page = Page.new(h)
				_page.save!

				p "Page #{@results[page].raw_attributes[:name]} got saved :)"
			  p "@results.count"
			end
  end
 end
end


 # Constitution.all.each do |const|
 # 	 @results = FbGraph::Page.search(const.name,:access_token => ACCESS_TOKEN)

	#  p @results.first.raw_attributes[:name]
	
	#  p "888888888888"
	#  p @results.count
 # end




# namespace :pick do
#   desc "Pick a random user as the winner"
#   task :winner => :environment do
#     puts "Winner: #{pick(User).name}"
#   end

#   desc "Pick a random product as the prize"
#   task :prize => :environment do
#     puts "Prize: #{pick(Product).name}"
#   end
  
#   desc "Pick a random prize and winner"
#   task :all => [:prize, :winner]
  
#   def pick(model_class)
#     model_class.find(:first, :order => 'RAND()')
#   end
# end