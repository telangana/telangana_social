namespace :sai do
 desc "Pages are loading from facebook"
   task :post => :environment do
    puts "Post on facebook"
    #serach pages from facebook
      ACCESS_TOKEN = FbToken.last.access_token

      @user = FbGraph::User.fetch("saikiran.mothe", :access_token => ACCESS_TOKEN)
      require 'ruby-hackernews'
      

 end
end



