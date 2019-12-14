require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do
      erb :root
    end
    
    get "/new" do
      erb :'pirates/new'
    end
    
    post "/pirates" do
      # process the input from the user and to display the pirate and his ships
      @pirate = Pirate.new(params[:pirate])
      
      #iterate over array containing a series of hashes storing each ship info
      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end
      
      @ships = Ship.all
      
      erb :'pirates/show'
    end
  end
end