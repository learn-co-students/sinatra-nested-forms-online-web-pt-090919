require './environment'

module FormsLab
  class App < Sinatra::Base
    # REMEMBER >>> CRUD(CREATE READ UPDATE DESTROY)

    get '/' do # root
      erb :'root'
    end

    get '/new' do # get form (SHOWING FORM)
      erb :'pirates/new'
    end

    post '/pirates' do 
      @pirate = Pirate.new(params[:pirate])
      params[:pirate][:ships].each do |ship_data|
        Ship.new(ship_data)
      end
      @ships = Ship.all
      
      erb :'pirates/show'
    end

  end
end    
