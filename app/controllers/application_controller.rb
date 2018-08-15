require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
    
  get '/'do
    erb :index
  end
  
  post '/result' do
    
    city = params[:city]
 
    if city == "Chicago"
      return erb :chicago
      
    elsif city == "Detroit"
      return erb :detroit

    elsif city == "Milwaukee"
      return erb :milwaukee
    
    elsif city == "St. Louis"
      return erb :stlouis
    else
      return "wrong page"
    end
    
  end
  
 
  
  post '/chicago_quiz' do
    activity = params[:activity]
    
    if activity == "workout"
      return erb :chicago_workout
      
    elsif activity == "breakfast"
      return erb :chicago_breakfast
      
    elsif activity == "shopping"
      return erb :chicago_shopping
    
    elsif activity == "lunch"
      return erb :chicago_lunch
    
    elsif activity == "landmark"
      return erb :chicago_landmark
    
    elsif activity == "entertainment"
      return erb :chicago_entertainment 
    
    elsif activity == "dinner"
      return erb == :chciago_dinner
      
    else 
      return "wrong page"
    end 
  end
end
